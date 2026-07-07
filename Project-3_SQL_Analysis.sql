-- CREATE DATABASE Project3_SQL;
-- USE Project3_SQL;

SELECT * FROM project3_data LIMIT 10;

-- Using COUNT Aggregation
SELECT COUNT(OrderID) AS Total_Orders 
FROM project3_data;

-- Using SUM Aggregation
-- which sums total order
SELECT SUM(Quantity * UnitPrice) AS Total_Sales 
FROM project3_data;

-- Using GROUP BY and ORDER BY 
-- It shows which product how many time sold in accending order
SELECT Product, COUNT(OrderID) AS Times_Sold
FROM project3_data
GROUP BY Product
ORDER BY Times_Sold DESC;

-- Using WHERE Clause for Filtering
-- It is for only cancelled order 
SELECT * FROM project3_data 
WHERE OrderStatus = 'Cancelled';

-- Using AVERAGE Aggregation
-- It is used to find Average Unit Price of every product
SELECT Product, AVG(UnitPrice) AS Average_Price
FROM project3_data
group by Product;