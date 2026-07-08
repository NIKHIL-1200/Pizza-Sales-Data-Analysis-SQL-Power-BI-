create database pizzaDB;
use pizzaDB;
select * from pizza_sales;
drop table pizza_sales;
CREATE TABLE pizza_sales;

SHOW GLOBAL VARIABLES LIKE 'local_infile';
set global local_infile = 1;

-- Step 1: Ensure the database exists and is active
CREATE DATABASE IF NOT EXISTS pizzadb;
USE pizzadb;

-- Step 2: Build the exact table structure for pizza_sales.csv
CREATE TABLE IF NOT EXISTS pizza_sales (
    pizza_id INT,
    order_id INT,
    pizza_name_id VARCHAR(50),
    quantity INT,
    order_date VARCHAR(20),       -- Temporarily VARCHAR to handle 'DD-MM-YYYY' format from the CSV
    order_time VARCHAR(20),       
    unit_price DECIMAL(10,2),
    total_price DECIMAL(10,2),
    pizza_size VARCHAR(5),
    pizza_category VARCHAR(50),
    pizza_ingredients VARCHAR(255),
    pizza_name VARCHAR(100)
);

-- Step 3: Load the data from your local machine
LOAD DATA LOCAL INFILE 'C:/Users/Nikhil/Downloads/pizza_sales.csv'
INTO TABLE pizza_sales
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Step 1: Clear out the partially loaded data to prevent duplicates
TRUNCATE TABLE pizza_sales;

-- Step 2: Reload the data with the correct Windows line terminators
LOAD DATA LOCAL INFILE 'C:/Users/Nikhil/Downloads/pizza_sales.csv'
INTO TABLE pizza_sales
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

SELECT SUM(total_price) as Total_Revenue from pizza_sales;













