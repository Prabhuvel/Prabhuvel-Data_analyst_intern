SELECT
    o.Order_ID,
    o.Order_Date,
    c.Customer_Name,
    c.Region,
    s.Sales
FROM orders o
INNER JOIN customers c
    ON o.Customer_ID = c.Customer_ID
INNER JOIN sales s
    ON o.Order_ID = s.Order_ID;

SELECT
    c.Customer_ID,
    c.Customer_Name,
    c.Region
FROM customers c
LEFT JOIN orders o
    ON c.Customer_ID = o.Customer_ID
WHERE o.Order_ID IS NULL;

SELECT
    p.Product_Name,
    SUM(s.Sales) AS total_sales
FROM sales s
INNER JOIN products p
    ON s.Product_ID = p.Product_ID
GROUP BY p.Product_Name
ORDER BY total_sales DESC;

SELECT
    p.Category,
    SUM(s.Sales) AS total_sales
FROM sales s
INNER JOIN products p
    ON s.Product_ID = p.Product_ID
GROUP BY p.Category
ORDER BY total_sales DESC;

SELECT
    c.Region,
    o.Order_Date,
    SUM(s.Sales) AS total_sales
FROM sales s
INNER JOIN orders o
    ON s.Order_ID = o.Order_ID
INNER JOIN customers c
    ON o.Customer_ID = c.Customer_ID
WHERE c.Region = 'West'
  AND o.Order_Date BETWEEN '2017-01-01' AND '2017-12-31'
GROUP BY c.Region, o.Order_Date;


