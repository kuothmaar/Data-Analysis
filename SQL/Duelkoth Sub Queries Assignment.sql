CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    TotalAmount DECIMAL(10, 2),
    OrderDate DATE
);
INSERT INTO Orders (OrderID, CustomerID, TotalAmount, OrderDate) VALUES
(1, 101, 250.00, '2023-01-01'),
(2, 102, 150.00, '2023-02-01'),
(3, 103, 500.00, '2023-03-01'),
(4, 101, 100.00, '2023-01-15'),
(5, 104, 600.00, '2023-04-01'),
(6, 102, 400.00, '2023-05-01'),
(7, 103, 300.00, '2023-06-01'),
(8, 105, 200.00, '2023-07-01'),
(9, 106, 700.00, '2023-08-01'),
(10, 107, 150.00, '2023-09-01'),
(11, 108, 350.00, '2023-10-01'),
(12, 109, 250.00, '2023-11-01'),
(13, 110, 450.00, '2023-12-01'),
(14, 101, 200.00, '2024-01-01'),
(15, 102, 300.00, '2024-02-01'),
(16, 103, 800.00, '2024-03-01'),
(17, 104, 100.00, '2024-04-01'),
(18, 105, 500.00, '2024-05-01'),
(19, 106, 600.00, '2024-06-01'),
(20, 107, 350.00, '2024-07-01');



-- Write a query that retrieves the order details for customers who have placed an order with a 
-- TotalAmount greater than $400. Use a subquery to find the customer IDs first, and then retrieve 
--the orders from the Orders table.
SELECT *
FROM Orders
WHERE CustomerID IN (
    SELECT DISTINCT CustomerID
    FROM Orders
    WHERE TotalAmount > 400
);
-----Task 2: Subquery in SELECT Clause
--Write a query that retrieves the OrderID, CustomerID, and TotalAmount for each order. Additionally,
 --return the number of orders each customer has placed using a subquery in the SELECT clause.

SELECT 
    OrderID, 
    CustomerID, 
    TotalAmount,
    (SELECT COUNT(*) 
     FROM Orders AS O2 
     WHERE O2.CustomerID = O1.CustomerID) AS OrderCount
FROM Orders AS O1;

---Task 3: Subquery in FROM Clause
--Write a query that retrieves customers and their total spending using a subquery in the FROM clause.

SELECT 
    CustomerID, 
    TotalSpending
FROM (
    SELECT 
        CustomerID, 
        SUM(TotalAmount) AS TotalSpending
    FROM Orders
    GROUP BY CustomerID
) AS CustomerSpending;
--Task 4: Subquery in HAVING Clause
---Write a query that retrieves the CustomerID and the total amount they have spent, but only for those customers whose total spending exceeds the average spending across all orders.

SELECT 
    CustomerID, 
    SUM(TotalAmount) AS TotalSpending
FROM Orders
GROUP BY CustomerID
HAVING SUM(TotalAmount) > (
    SELECT AVG(TotalAmount) 
    FROM Orders
);