#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DATA_FILE="$ROOT_DIR/data.json"

if [[ ! -f "$DATA_FILE" ]]; then
  echo "Validation failed: data.json not found at $DATA_FILE"
  exit 1
fi

if ! command -v jq >/dev/null 2>&1; then
  echo "Validation failed: jq is required but not installed"
  exit 1
fi

# Syntax validation
jq . "$DATA_FILE" >/dev/null

# Required top-level keys and section types
jq -e '
  has("report_metadata") and
  has("high_priority_opportunities") and
  (.high_priority_opportunities | type == "array") and
  has("medium_priority_opportunities") and
  (.medium_priority_opportunities | type == "array") and
  has("low_priority_opportunities") and
  (.low_priority_opportunities | type == "array")
' "$DATA_FILE" >/dev/null || {
  echo "Validation failed: missing required top-level keys or invalid opportunity section types"
  exit 1
}

# Required metadata fields
jq -e '
  (.report_metadata | type == "object") and
  (.report_metadata | has("report_title")) and
  (.report_metadata | has("report_date")) and
  (.report_metadata | has("time_window")) and
  (.report_metadata | has("region"))
' "$DATA_FILE" >/dev/null || {
  echo "Validation failed: report_metadata must include report_title, report_date, time_window, and region"
  exit 1
}

# Required fields per opportunity in all priority arrays
jq -e '
  [
    .high_priority_opportunities[],
    .medium_priority_opportunities[],
    .low_priority_opportunities[]
  ]
  | all(
      (type == "object") and
      has("address") and
      has("category") and
      has("key_signal") and
      has("score") and
      has("source") and
      has("link")
    )
' "$DATA_FILE" >/dev/null || {
  echo "Validation failed: each opportunity must include address, category, key_signal, score, source, and link"
  exit 1
}

echo "data.json validation passed"
