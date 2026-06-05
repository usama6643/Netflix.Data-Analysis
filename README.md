# 🎬 Netflix Content Catalog Analysis (SQL)

## 📌 Project Overview
This repository contains a foundational data analysis project utilizing a structured dataset modeled after a global streaming platform (**Netflix**). The primary purpose of this project is to master **Beginner to Intermediate SQL querying**, transition from abstract syntax to data-driven business logic, and build data optimization workflows required for **Junior Data Analyst** mandates.

---

## 🎯 Technical Learning Objectives
The core focus of this analysis is to develop bulletproof proficiency in structural data manipulation:
* **Conditional Filtering:** Mastering operational filters using `WHERE`, logical operators, and handling missing strings (`Unknown`).
* **Categorical Summarization:** Utilizing `GROUP BY` paired with statistical aggregate functions (`COUNT`, `MIN`, `MAX`, `AVG`).
* **Advanced Thresholding:** Evaluating aggregated groups using the `HAVING` clause to segment density profiles.
* **Feature Engineering Logic:** Implementing `CASE WHEN` statements to dynamically transform raw metrics (e.g., Release Years) into custom business classifications (Content Eras).

---

## 🗂️ Dataset Profile & Schema
The data infrastructure models core content lifecycle properties:
* **Categorization:** `Type` separation (Movies vs. Episodic TV Shows).
* **Metadata Fields:** Titles, Directors, Production Origins (`Country`), and Classifications (`Ratings`).
* **Temporal Streams:** Tracking market release years to monitor platform catalog evolution.

---

## 📊 Core Business Problems Solved (SQL Capabilities)
The attached script contains distinct functional queries designed to extract streaming insights:
1. **Catalog Segmentation:** Measures the distribution volume between feature films and multi-season TV Shows.
2. **Geographical Concentration:** Pinpoints the core international manufacturing hubs for content acquisition.
3. **Era Classification:** Builds runtime categorical segmentation to group vintage content against modern releases.
4. **Volume Outlier Detection:** Filters structural genres that exhibit content density scales over defined operational benchmarks.

---

## 🚀 How to Execute This Portfolio Project
1. Load the `netflix_analysis.sql` script into any SQL editor (PostgreSQL, MySQL, DBeaver, or pgAdmin).
2. Execute the table initialization scripts to build the relational schema.
3. Run individual practice blocks to validate analytical data behaviors and outputs.
