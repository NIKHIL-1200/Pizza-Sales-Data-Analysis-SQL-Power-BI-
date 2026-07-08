# Pizza Sales Analysis - Business Questions, Results, and Insights

## 1. Total Orders

**Question:**
What is the total number of orders placed?

**Result:**
The dataset contains a total of **21,350** unique orders.

**Insight:**
The total number of orders shows the overall customer footfall and demand.
A high number of orders indicates strong customer interest and a busy operational year.

---

## 2. Total Revenue Generated

**Question:**
What is the total revenue generated from pizza sales?

**Result:**
The total revenue generated across all sales is **$817,860.05**.

**Insight:**
Total revenue measures the financial performance of the pizza store.
This helps the business understand the gross income generated over the entire reporting period.

---

## 3. Total Pizzas Sold

**Question:**
What is the total number of individual pizzas sold?

**Result:**
A total of **49,574** individual pizzas were sold.

**Insight:**
Total pizzas sold helps understand kitchen output and ingredient consumption.
This metric is vital for predicting future inventory needs and measuring production capacity.

---

## 4. Average Order Value (AOV)

**Question:**
What is the average amount spent per order?

**Result:**
The average order value (AOV) is **$38.31**.

**Insight:**
Average order value helps understand customer spending behavior.
This metric is useful for setting up cross-selling or upselling targets (e.g., offering sides or drinks to push the average above a certain dollar amount).

---

## 5. Busiest Day of the Week

**Question:**
Which days of the week generate the highest order volume?

**Result:**
**Friday** is the busiest day with 3,538 orders, followed closely by **Thursday** (3,239 orders) and **Saturday** (3,158 orders).

**Insight:**
Identifying the busiest days helps the store optimize staff scheduling.
Peak days (like Fridays or weekends) require more kitchen staff, delivery drivers, and dough preparation to meet demand smoothly.

---

## 6. Busiest Month of the Year

**Question:**
Which months of the year generate the most sales?

**Result:**
**July** is the busiest month with 1,935 orders, followed by **May** (1,853 orders) and **January** (1,845 orders).

**Insight:**
Monthly trend analysis highlights business seasonality.
Identifying peak months (like July) helps the business plan seasonal marketing campaigns and manage bulk inventory purchases.

---

## 7. Sales by Pizza Category

**Question:**
Which pizza categories (e.g., Classic, Supreme, Chicken, Veggie) generate the most revenue?

**Result:**
The breakdown of sales by category is very evenly distributed:
* **Classic:** $220,053.10 (26.91%)
* **Supreme:** $208,197.00 (25.46%)
* **Chicken:** $195,919.50 (23.96%)
* **Veggie:** $193,690.45 (23.68%)

**Insight:**
Category analysis identifies customer flavor preferences.
Knowing that a category like "Classic" drives the most sales helps guide menu engineering and targeted promotional offers.

---

## 8. Sales by Pizza Size

**Question:**
What is the most popular pizza size?

**Result:**
Large pizzas dominate the sales volume, making up almost half of all revenue:
* **Large (L):** $375,318.70 (45.89%)
* **Medium (M):** $249,382.25 (30.49%)
* **Small (S):** $178,076.50 (21.77%)
* **Extra Large (XL):** $14,076.00 (1.72%)
* **Extra Extra Large (XXL):** $1,006.60 (0.12%)

**Insight:**
Understanding size preferences is critical for operational efficiency.
Because Large (L) pizzas dominate sales, the store can optimize dough portioning and ensure they order the correct ratio of packaging boxes.

---

## 9. Top-Selling Pizza

**Question:**
Which specific pizza generates the highest sales volume?

**Result:**
**The Classic Deluxe Pizza** is the top-seller with 2,453 units sold.

**Insight:**
This highlights the store's flagship product.
The business must ensure the specific ingredients for this top-seller are constantly stocked to prevent stockouts and lost revenue.

---

## 10. Least-Selling Pizza

**Question:**
Which specific pizza generates the lowest sales volume?

**Result:**
**The Brie Carre Pizza** is the least-selling item with only 490 units sold.

**Insight:**
Identifying the worst-selling items helps in menu optimization.
Low-performing pizzas can be removed from the menu to reduce ingredient waste and simplify kitchen operations.

---

# Overall Business Insights

The analysis provides a comprehensive view of the pizza store's operational and financial performance, highlighting peak ordering times, revenue drivers, and customer product preferences.

Important factors such as the day of the week, pizza size, and flavor category heavily influence sales volume. Understanding these patterns allows the business to align its inventory, staffing, and marketing strategies with actual customer demand.

This project demonstrates how data can be extracted, transformed, and analyzed to optimize restaurant operations, reduce food waste, and drive higher profitability.

# Conclusion

This project helped me practice writing end-to-end data pipelines and applying SQL concepts such as data ingestion (`LOAD DATA LOCAL INFILE`), table creation, aggregation, grouping, filtering, string/date manipulation, and Common Table Expressions (CTEs).

It also helped me understand how raw transactional data can be translated into actionable business metrics for the retail and food & beverage industry, setting up a clean foundation for interactive dashboard visualization.
