# 🍕 Pizza Sales Data Analysis (SQL + Power BI)

## 📌 Project Overview
This repository contains an end-to-end Data Analytics Portfolio Project analyzing pizza sales data. The project demonstrates the complete lifecycle of data analysis, from raw data ingestion and SQL querying to data cleaning, processing, and interactive dashboard creation using Power BI.

## 🎯 Problem Statement
The goal of this project is to analyze a year of pizza sales data to understand business performance, identify key trends, and uncover insights regarding product popularity. The specific requirements include:
*   Calculating core Key Performance Indicators (KPIs) like Total Revenue, Average Order Value, Total Pizzas Sold, and Total Orders.
*   Visualizing daily and monthly sales trends.
*   Determining the percentage of sales by pizza category and size.
*   Identifying the top 5 and bottom 5 best-selling pizzas by revenue, total quantity, and total orders.

## 🛠️ Tech Stack & Tools
*   **Database:** MySQL (Data extraction, exploration, and metric validation)
*   **Business Intelligence:** Power BI (Data modeling, DAX, and Dashboard design)
*   **Data Transformation:** Power Query
*   **Source Data:** Excel/CSV

## 🚀 Project Workflow

### 1. Data Ingestion & SQL Exploration
*   Imported raw `.csv` data into a MySQL database.
*   Engineered SQL queries to calculate KPIs and aggregate data by various dimensions (time, category, size).
*   Validated the dataset for accuracy before moving it to the visualization phase.

### 2. Data Connection & Cleaning (Power BI)
*   Connected Power BI directly to the MySQL local database.
*   Utilized Power Query to clean and format the data (e.g., standardizing date formatting, handling abbreviations, and updating column names).

### 3. Data Processing & DAX
*   Created dynamic measures using Data Analysis Expressions (DAX) to calculate Total Revenue, Total Orders, Average Order Value, and dynamic formatting.
*   Engineered custom date tables and time-intelligence features for accurate trend analysis.

### 4. Dashboard Development
*   **Home Dashboard:** Features high-level KPIs, bar charts for trend analysis, and donut charts for category/size breakdowns.
*   **Best/Worst Sellers Dashboard:** Highlights top-performing and underperforming items to drive menu optimization.
*   Added interactive navigator buttons to seamlessly switch between dashboard views.

## 📊 Key Insights Generated
*   **Peak Periods:** Identified specific days of the week (Fridays/Saturdays) and months (July) that drive the highest order volumes.
*   **Product Preferences:** Discovered that the "Large" size and "Classic" category dominate the overall sales share.
*   **Inventory Optimization:** Pinpointed the exact top 5 pizzas that require constant ingredient stocking, and the bottom 5 pizzas that could be candidates for removal from the menu to reduce food waste.
