
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2),
    CategoryID INT
);


INSERT INTO Products VALUES
(1, 'Laptop', 1200.00, 1),
(2, 'Mouse', 25.50, 2),
(3, 'Keyboard', 45.00, 2),
(4, 'Tablet', 650.00, 1),
(5, 'Monitor', 300.00, 3),
(6, 'Camera', 500.00, 4),
(7, 'Headphones', 150.00, 2);


CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT,
    Age INT
);

INSERT INTO Employees VALUES
(1, 'Alice', 'IT', 5000, 30),
(2, 'Bob', 'Sales', 4500, 28),
(3, 'Carol', 'IT', 5200, 35),
(4, 'David', 'HR', 4100, 42),
(5, 'Eva', 'IT', 4900, 29),
(6, 'Frank', 'Sales', 4600, 33),
(7, 'Grace', 'Sales', 4700, 31),
(8, 'Helen', 'HR', 4000, 39),
(9, 'Ian', 'IT', 5100, 27),
(10, 'Jack', 'HR', 3900, 45);


CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50)
);


INSERT INTO Customers VALUES
(1, 'Tom'),
(2, 'Jerry'),
(3, 'Mickey');


CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    CustomerID INT,
    Quantity INT,
    SaleDate DATE
);


INSERT INTO Sales VALUES
(1, 7, 1, 2, '2023-07-01'),
(2, 2, 2, 3, '2023-07-02'),
(3, 7, 3, 1, '2023-07-03'),
(4, 1, 2, 1, '2023-07-04'),
(5, 3, 1, 2, '2023-07-05');


SELECT MIN(Price) AS MinPrice FROM Products;


SELECT MAX(Salary) AS MaxSalary FROM Employees;

SELECT COUNT(*) AS TotalCustomers FROM Customers;

SELECT COUNT(DISTINCT CategoryID) AS UniqueCategories FROM Products;


SELECT SUM(Quantity * Price) AS TotalSalesAmount
FROM Sales
JOIN Products ON Sales.ProductID = Products.ProductID
WHERE Sales.ProductID = 7;

SELECT AVG(Age) AS AverageAge FROM Employees;


SELECT Department, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY Department;


SELECT CategoryID, MIN(Price) AS MinPrice, MAX(Price) AS MaxPrice
FROM Products
GROUP BY CategoryID;


SELECT CustomerID, SUM(Quantity * Price) AS TotalSales
FROM Sales
JOIN Products ON Sales.ProductID = Products.ProductID
GROUP BY CustomerID;


SELECT Department AS DeptID
FROM Employees
GROUP BY Department
HAVING COUNT(*) > 5;
