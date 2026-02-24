# International Debt Analysis (SQL)

## Overview

SQL-based exploratory data analysis of World Bank international debt data.  

This project analyzes country-level debt metrics across multiple financial indicators to identify borrowing patterns and repayment trends.

---

## Business Questions

- How many distinct countries are represented?
- Which country has the highest total debt?
- Which country has the lowest total repayment amount?

---

## Dataset

**Table:** `international_debt`

| Column | Description |
|--------|------------|
| country_name | Country name |
| country_code | Country code |
| indicator_name | Debt indicator description |
| indicator_code | Debt indicator code |
| debt | Debt value (current USD) |

Each country appears multiple times (one row per indicator), requiring aggregation to compute country-level totals.

---

## SQL Skills Demonstrated

- `COUNT(DISTINCT)`
- Aggregations with `SUM()`
- `GROUP BY`
- Filtering with `WHERE`
- Ordered comparisons with `ORDER BY`
- Country-level financial summarization

---

## Repository Structure
- exploration.ipynb - SQL analysis notebook
- analysis.sql - Standalone SQL queries
- README.md

---

## Why This Project Matters

Demonstrates the ability to:

- Translate business questions into SQL queries  
- Aggregate multi-dimensional financial data  
- Compare entities using structured analysis  
- Write clean, reproducible SQL  
