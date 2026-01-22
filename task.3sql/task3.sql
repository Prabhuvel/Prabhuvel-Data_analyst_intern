-- Task 3: SQL Basics
-- Dataset: Superstore
-- Objective: Filtering, Sorting, Aggregations
use sql_task3;

-- View sample data
SELECT * FROM superstore LIMIT 10;

-- Filtering by category
SELECT *
FROM superstore
WHERE Category = 'Technology';

-- Sorting by sales
SELECT *
FROM superstore
ORDER BY Sales DESC;

-- Category-wise sales summary
SELECT Category, SUM(Sales) AS total_sales
FROM superstore
GROUP BY Category;

-- Filter categories with high sales
SELECT Category, SUM(Sales) AS total_sales
FROM superstore
GROUP BY Category
HAVING SUM(Sales) > 100000;

-- Date range filtering
SELECT *
FROM superstore
WHERE Order_Date BETWEEN '2017-01-01' AND '2017-12-31';

-- Pattern search on customer names
SELECT *
FROM superstore
WHERE Customer_Name LIKE '%Singh%';

