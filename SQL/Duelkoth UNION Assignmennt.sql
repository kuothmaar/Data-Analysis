--Task 1: Combine the results of two queries using UNION

SELECT CustomerID, CustomerName, PurchaseAmount
FROM OnlinePurchases
UNION
SELECT CustomerID, CustomerName, PurchaseAmount
FROM InStorePurchases;


--Task 2: Combine the results of two tables using UNION ALL

SELECT ProductID, ProductName, Price
FROM ProductsA
UNION ALL
SELECT ProductID, ProductName, Price
FROM ProductsB;

