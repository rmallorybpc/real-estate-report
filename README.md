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
