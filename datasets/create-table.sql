CREATE DATABASE SQLRevision;
GO

USE SQLRevision;
GO

CREATE TABLE dbo.Customers
(
	CustomerID INT IDENTITY(1,1)
	PRIMARY KEY,
	CustomerName VARCHAR(100) NOT NULL,
	Email VARCHAR(150) NULL,
	City VARCHAR(80) NULL,
	CreatedAT DATETIME2 NOT NULL
		DEFAULT SYSDATETIME()
);

ALTER TABLE dbo.Customers
DROP Created;

DROP TABLE dbo.Customers;

USE SQLRevision; GO 
CREATE TABLE dbo.Customers ( CustomerID INT IDENTITY(1,1) PRIMARY KEY,
CustomerName VARCHAR(100) NOT NULL,
Email VARCHAR(150) NULL, City VARCHAR(80) NULL,
SignupDate DATE NOT NULL );

CREATE TABLE dbo.Products ( ProductID INT IDENTITY(1,1) PRIMARY KEY,
ProductName VARCHAR(100) NOT NULL,
Category VARCHAR(50) NOT NULL,
Price DECIMAL(10,2) NOT NULL CHECK (Price >= 0),
Stock INT NOT NULL DEFAULT 0 CHECK (Stock >= 0) );
CREATE TABLE dbo.Orders ( OrderID INT IDENTITY(1,1) PRIMARY KEY,
CustomerID INT NOT NULL, OrderDate DATETIME2 NOT NULL,
Status VARCHAR(20) NOT NULL,
CONSTRAINT FK_Orders_Customers FOREIGN KEY (CustomerID) REFERENCES dbo.Customers(CustomerID) );

CREATE TABLE dbo.OrderItems ( OrderItemID INT IDENTITY(1,1) PRIMARY KEY,
OrderID INT NOT NULL, 
ProductID INT NOT NULL,
Quantity INT NOT NULL CHECK (Quantity > 0), 
UnitPrice DECIMAL(10,2) NOT NULL CHECK (UnitPrice >= 0),
CONSTRAINT FK_OrderItems_Orders FOREIGN KEY (OrderID) REFERENCES dbo.Orders(OrderID), 
CONSTRAINT FK_OrderItems_Products FOREIGN KEY (ProductID) REFERENCES dbo.Products(ProductID) ); 

CREATE TABLE dbo.Employees ( EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
EmployeeName VARCHAR(100) NOT NULL,
ManagerID INT NULL,
Department VARCHAR(50) NOT NULL, 
Salary DECIMAL(10,2) NOT NULL,
HireDate DATE NOT NULL,
CONSTRAINT FK_Employees_Manager FOREIGN KEY (ManagerID) REFERENCES dbo.Employees(EmployeeID) );
GO

INSERT INTO dbo.Customers (CustomerName, Email, City, SignupDate) VALUES ('Asha Rao', 'asha@example.com', 'Bengaluru', '2025-01-10'), ('Ravi Kumar', 'ravi@example.com', 'Mysuru', '2025-02-15'), ('Neha Shah', 'neha@example.com', 'Pune', '2025-03-20'), ('Arjun Das', 'arjun@example.com', NULL, '2025-04-05'), ('Priya Nair', 'priya@example.com', 'Bengaluru', '2025-05-12'), ('Kabir Mehta', 'kabir@example.com', 'Mumbai', '2025-06-18'), ('Sneha Iyer', 'sneha@example.com', 'Chennai', '2025-07-22'), ('Vikram Singh', NULL, 'Delhi', '2025-08-30'); 

INSERT INTO dbo.Products (ProductName, Category, Price, Stock) VALUES ('Laptop', 'Electronics', 65000.00, 10), ('Smartphone', 'Electronics', 25000.00, 25), ('Headphones', 'Electronics', 2500.00, 40), ('Office Chair', 'Furniture', 8500.00, 8), ('Desk', 'Furniture', 12000.00, 5), ('Notebook', 'Stationery', 100.00, 100), ('Pen', 'Stationery', 20.00, 200), ('USB Cable', 'Electronics', 300.00, 0), ('Monitor', 'Electronics', 18000.00, 12), ('Bookshelf', 'Furniture', 7500.00, 4), ('Mouse', 'Electronics', 800.00, 50), ('Water Bottle', 'Accessories', 450.00, 30);

INSERT INTO dbo.Orders (CustomerID, OrderDate, Status) VALUES (1, '2026-01-05T10:00:00', 'Completed'), (1, '2026-02-10T12:30:00', 'Completed'), (2, '2026-01-15T14:00:00', 'Pending'), (3, '2026-03-03T09:15:00', 'Completed'), (4, '2026-03-20T16:45:00', 'Cancelled'), (5, '2026-02-21T11:00:00', 'Completed'), (2, '2026-04-12T15:20:00', 'Completed'), (3, '2026-05-01T13:00:00', 'Pending'), (1, '2026-06-18T18:30:00', 'Processing'), (7, '2026-07-07T10:45:00', 'Completed'), (8, '2026-08-16T17:15:00', 'Cancelled');

INSERT INTO dbo.OrderItems (OrderID, ProductID, Quantity, UnitPrice) VALUES (1, 1, 1, 65000.00), (1, 3, 2, 2500.00), (2, 2, 1, 25000.00), (2, 6, 5, 100.00), (3, 4, 1, 8500.00), (4, 2, 2, 24000.00), (4, 3, 1, 2500.00), (5, 7, 10, 20.00), (6, 5, 1, 12000.00), (7, 11, 2, 800.00), (7, 8, 3, 300.00), (8, 10, 1, 7500.00), (9, 9, 2, 18000.00), (10, 6, 10, 100.00), (10, 12, 2, 450.00), (11, 3, 1, 2500.00);

INSERT INTO dbo.Employees (EmployeeName, ManagerID, Department, Salary, HireDate) VALUES ('Meera', NULL, 'Management', 150000.00, '2019-01-10'), ('Dev', 1, 'Engineering', 100000.00, '2020-03-15'), ('Isha', 1, 'Sales', 110000.00, '2020-06-01'), ('Rahul', 2, 'Engineering', 75000.00, '2022-07-20'), ('Anita', 2, 'Engineering', 80000.00, '2021-11-05'), ('Karan', 3, 'Sales', 70000.00, '2023-02-14'), ('Pooja', 3, 'Sales', 85000.00, '2022-09-12'), ('Amit', 1, 'HR', 65000.00, '2024-01-08'); 

SELECT * FROM dbo.Customers

SELECT * FROM dbo.Employees

SELECT * FROM dbo.OrderItems

SELECT * FROM dbo.Orders

SELECT * FROM dbo.Products

