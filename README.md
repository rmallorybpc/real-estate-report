# Real Estate Intelligence Agent (DMV Region)

A fully automated, AI‑powered research system that scans the Denver, CO real estate market, identifies meaningful activity, scores opportunities, and publishes a clean daily report to GitHub Pages.

This project demonstrates how to combine Zapier, AI agents, and GitHub Pages to create a scalable, no‑code intelligence workflow suitable for analysts, agents, investors, and operators.

---

## Overview

The Real Estate Intelligence Agent is a daily automation that:

- Collects real estate signals from multiple public sources  
- Filters, de‑duplicates, and scores opportunities  
- Generates a structured HTML report  
- Publishes the report to a public GitHub Pages site  
- Sends a concise summary to Slack  

The result is a **self‑updating market intelligence dashboard** that runs without human intervention.

---

## Why This Project Exists

Real estate data is fragmented across dozens of platforms. Analysts and agents often spend hours each week checking:

- New listings  
- Price drops  
- Pending/sold activity  
- Commercial leases  
- Development permits  
- Zoning changes  
- Local planning updates  

This project solves that problem by creating a **repeatable, automated research agent** that delivers insights on a predictable cadence.

---

## Key Features

### 1. Multi‑Source Market Scanning
The agent checks a curated set of sources, including:

- Redfin  
- Zillow  
- Realtor.com  
- LoopNet  
- Local county permit portals  
- Washington Business Journal  
- UrbanTurf DC  
- Local planning and zoning updates  
- Eventbrite (investor meetups, open houses)

### 2. Intelligent Filtering & Scoring
Each opportunity is scored 1–10 based on:

- Recency  
- Signal strength (price drop, permit filed, new listing, etc.)  
- Potential market impact  
- Data completeness  

This creates a consistent, comparable weekly view of the market.

### 3. Automated HTML Report Generation
The agent produces a clean, structured HTML report with:

- High‑priority opportunities  
- Medium‑priority opportunities  
- Low‑priority opportunities  
- Links, summaries, and scoring details  

This file is published directly to GitHub Pages.

### 4. Slack‑Ready Summary
A concise top‑5 summary is generated for quick review:

# Page link
https://rmallorybpc.github.io/real-estate-report/

---

## Live Page Update Workflow (Copy/Paste)

The live report page now renders directly from data.json.

### Fast update steps

1. Open data.json.
2. Replace the full file contents with your latest Zapier JSON payload.
3. Validate JSON format (no trailing commas, all quotes closed).
4. Save and commit changes.
5. Push to main.
6. Refresh the GitHub Pages URL.

### Required top-level keys

Your payload should include:

- report_metadata
- high_priority_opportunities
- medium_priority_opportunities
- low_priority_opportunities

Optional but supported:

- scoring_model
- market_insights
- report_metadata.market_context

### Per-opportunity fields

Each item in priority arrays should include at least:

- address
- category
- key_signal
- score
- source
- link

Optional fields shown when present:

- price
- details
- reasoning
- date_sold
- date_available

### Malformed JSON fallback

If the page shows an "Unable to load report data" message:

1. Re-open data.json and fix syntax errors.
2. If needed, restore last known good JSON from git history.
3. Commit and push again.
4. Refresh the live page.
