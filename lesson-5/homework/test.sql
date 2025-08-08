
CREATE TABLE Products (
    ProductID INT,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2)
);

CREATE TABLE Products_Discounted (
    ProductID INT,
    ProductName VARCHAR(50),
    StockQuantity INT
);

CREATE TABLE Customers (
    CustomerID INT,
    FirstName VARCHAR(50),
    Country VARCHAR(50)
);


INSERT INTO Products VALUES
(1, 'Laptop', 1500),
(2, 'Mouse', 25),
(3, 'Keyboard', 100);

INSERT INTO Products_Discounted VALUES
(3, 'Keyboard', 150),
(4, 'Tablet', 50);

INSERT INTO Customers VALUES
(1, 'Alice', 'USA'),
(2, 'Andrew', 'Canada'),
(3, 'Alice', 'USA');


SELECT ProductName AS Name FROM Products;


SELECT * FROM Customers AS Client;

SELECT ProductName FROM Products
UNION
SELECT ProductName FROM Products_Discounted;


SELECT ProductName FROM Products
INTERSECT
SELECT ProductName FROM Products_Discounted;

SELECT DISTINCT FirstName, Country FROM Customers;

SELECT ProductName, 
       CASE 
         WHEN Price > 1000 THEN 'High' 
         ELSE 'Low' 
       END AS PriceLevel
FROM Products;


SELECT ProductName, 
       IIF(StockQuantity > 100, 'Yes', 'No') AS InStock
FROM Products_Discounted;
