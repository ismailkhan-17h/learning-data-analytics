SELECT CustomerID, CustomerName FROM SQLRevision.dbo.Customers;

SELECT id FROM MyDatabase.dbo.Customers;

SELECT * FROM SQLRevision.dbo.Products; 

SELECT ProductName,
		Price,
		Stock,
		Price * Stock as InventoryValue
FROM SQLRevision.dbo.Products; 

SELECT * FROM SQLRevision.dbo.Customers; 

SELECT CustomerName,
'Active' as CustomerLabel
FROM SQLRevision.dbo.Customers; 

SELECT DISTINCT ProductName, Category FROM SQLRevision.dbo.Products; 

SELECT * FROM SQLRevision.dbo.Products; 

SELECT Price FROM SQLRevision.dbo.Products 
	WHERE price <10000;

SELECT ProductID,Stock FROM SQLRevision.dbo.Products 
	WHERE ProductName ='Laptop' and Price = 65000

SELECT * FROM SQLRevision.dbo.Products 

SELECT ProductName, Price FROM SQLRevision.dbo.Products 
ORDER BY Price ASC

SELECT TOP(5) ProductName, Price FROM SQLRevision.dbo.Products 
ORDER BY Price DESC

SELECT * FROM (
SELECT ProductName,
		Price * Stock AS 'Inventory'
	FROM SQLRevision.dbo.Products
	)AS ProductInventory
	WHERE Inventory > 10000;

SELECT * FROM SQLRevision.dbo.Customers 

ALTER TABLE SQLRevision.dbo.Customers 
ADD PhoneNumber VARCHAR(20) NULL;

ALTER TABLE SQLRevision.dbo.Customers 
ALTER COLUMN PhoneNumber VARCHAR(40) NULL; /* CHANGING COLUMN DATATYPE*/

CREATE UNIQUE NONCLUSTERED INDEX UX_Customers_Email
 ON SQLRevision.dbo.Customers (Email) 
 WHERE Email IS NOT NULL;

SELECT * FROM SQLRevision.dbo.Products

SELECT ProductName FROM SQLRevision.dbo.Products 
WHERE price >= 500 AND price <=10000 

SELECT * FROM SQLRevision.dbo.Customers

SELECT CustomerName FROM SQLRevision.dbo.Customers 
WHERE Email IS NULL OR City IS NULL

SELECT * FROM SQLRevision.dbo.Products 

SELECT TOP(3) ProductName, Price FROM SQLRevision.dbo.Products 
ORDER BY Price ASC

SELECT OrderDate FROM SQLRevision.dbo.Orders 
where status = 'Completed'

SELECT ProductName,
Price * Stock as Total FROM SQLRevision.dbo.Products 
ORDER BY Price * Stock DESC








	
