
-- 1. Create the database and set it as the active working database
CREATE DATABASE IF NOT EXISTS pizzadb;
USE pizzadb;

-- 2. Build the table structure with the appropriate data types to hold the raw CSV data
CREATE TABLE IF NOT EXISTS pizza_sales (
    pizza_id INT,
    order_id INT,
    pizza_name_id VARCHAR(50),
    quantity INT,
    order_date VARCHAR(20),       
    order_time VARCHAR(20),       
    unit_price DECIMAL(10,2),
    total_price DECIMAL(10,2),
    pizza_size VARCHAR(5),
    pizza_category VARCHAR(50),
    pizza_ingredients VARCHAR(255),
    pizza_name VARCHAR(100)
);

-- 3. Clear out any existing records in the table to prevent data duplication before a fresh import
TRUNCATE TABLE pizza_sales;

-- 4. Bulk import the raw dataset from the local CSV file, accounting for Windows line breaks
LOAD DATA LOCAL INFILE 'C:/Users/Nikhil/Downloads/pizza_sales.csv'
INTO TABLE pizza_sales
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

-- 5. Retrieve and view all records to verify the data was loaded correctly
SELECT * FROM pizza_sales; 

-- 6. KPI: Calculate the Total Revenue generated across all orders
SELECT SUM(total_price) AS Total_Revenue FROM pizza_sales;

-- 7. KPI: Calculate the Average Order Value (Total Revenue divided by the number of unique orders)
SELECT SUM(total_price)/COUNT(DISTINCT order_id) AS Avg_order_value FROM pizza_sales;

-- 8. KPI: Calculate the Total Number of individual pizzas sold
SELECT SUM(quantity) AS Total_pizza_sold FROM pizza_sales;

-- 9. KPI: Calculate the Total Number of unique orders placed
SELECT COUNT(DISTINCT order_id) AS Total_orders FROM pizza_sales;

-- 10. KPI: Calculate the Average Number of Pizzas sold per Order
SELECT CAST(SUM(quantity) AS DECIMAL(10,2)) / CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS Avg_pizza_per_order FROM pizza_sales;

-- 11. Trend Analysis: Find the total number of orders grouped by the Day of the Week
SELECT 
    DAYNAME(STR_TO_DATE(order_date, '%d-%m-%Y')) AS order_day,
    COUNT(DISTINCT order_id) AS total_orders 
FROM pizza_sales
GROUP BY DAYNAME(STR_TO_DATE(order_date, '%d-%m-%Y'));

-- 12. Trend Analysis: Find the total number of orders grouped by Month, sorted from busiest to slowest
SELECT 
    MONTHNAME(STR_TO_DATE(order_date, '%d-%m-%Y')) AS month_name,
    COUNT(DISTINCT order_id) AS total_orders 
FROM pizza_sales
GROUP BY MONTHNAME(STR_TO_DATE(order_date, '%d-%m-%Y'))
ORDER BY total_orders DESC;

-- 13. Product Analysis: Calculate the Total Revenue and Percentage of Total Sales for each Pizza Category
SELECT 
    pizza_category,
    SUM(total_price) AS Total_Revenue, 
    SUM(total_price) * 100 / (SELECT SUM(total_price) 
        FROM pizza_sales
    ) AS Percentage_of_sales
FROM pizza_sales
GROUP BY pizza_category;

-- 14. Deep Dive: Detailed breakdown of January's performance (Revenue, Orders, and Sales Percentage) grouped by Category and Day of the Week
WITH Total_Sales_CTE AS (
    SELECT SUM(total_price) AS total_yearly_revenue
    FROM pizza_sales
)
SELECT 
    MONTHNAME(STR_TO_DATE(p.order_date, '%d-%m-%Y')) AS month_name,
    DAYNAME(STR_TO_DATE(p.order_date, '%d-%m-%Y')) AS order_day,
    p.pizza_category,
    COUNT(DISTINCT p.order_id) AS total_orders,
    SUM(p.total_price) AS Total_Revenue, 
    -- Round to 2 decimal places and append the % symbol
    CONCAT(ROUND(SUM(p.total_price) * 100 / t.total_yearly_revenue, 2), '%') AS Percentage_of_sales
FROM pizza_sales p
CROSS JOIN Total_Sales_CTE t
WHERE MONTH(STR_TO_DATE(p.order_date, '%d-%m-%Y')) = 1
GROUP BY 
    MONTHNAME(STR_TO_DATE(p.order_date, '%d-%m-%Y')),
    DAYNAME(STR_TO_DATE(p.order_date, '%d-%m-%Y')),
    p.pizza_category,
    t.total_yearly_revenue;

-- 15. Product Analysis: Calculate the Total Revenue and Percentage of Total Sales for each Pizza Size, sorted highest to lowest
SELECT 
    pizza_size,
    SUM(total_price) AS Total_Revenue, 
    CONCAT(ROUND(SUM(total_price) * 100 / (
        SELECT SUM(total_price) 
        FROM pizza_sales
    ), 2), '%') AS Percentage_of_sales
FROM pizza_sales
GROUP BY pizza_size
ORDER BY Total_Revenue DESC;

-- 16. Top Performers: Identify the Top 5 best-selling individual pizzas based on Total Revenue
SELECT pizza_name, SUM(total_price) AS total_revenue 
FROM pizza_sales
GROUP BY pizza_name 
ORDER BY SUM(total_price) DESC
LIMIT 5;

-- 17. Top Performers: Identify the Top 5 best-selling individual pizzas based on the Total Number of Orders
SELECT pizza_name, COUNT(DISTINCT order_id) AS total_orders 
FROM pizza_sales
GROUP BY pizza_name 
ORDER BY COUNT(DISTINCT order_id) DESC
LIMIT 5;













