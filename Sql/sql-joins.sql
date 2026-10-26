SELECT * FROM SQLRevision.dbo.Customers

SELECT * FROM SQLRevision.dbo.Orders

SELECT c.CustomerName, o.OrderID, o.OrderDate  FROM SQLRevision.dbo.Customers AS c 
INNER JOIN SQLRevision.dbo.Orders AS o
ON c.CustomerID = o.CustomerID

SELECT c.CustomerName, o.OrderID, o.OrderDate, o.Status  FROM SQLRevision.dbo.Customers AS c 
LEFT JOIN SQLRevision.dbo.Orders AS o
ON c.CustomerID = o.CustomerID

SELECT * FROM MyDatabase.dbo.customers

SELECT * FROM MyDatabase.dbo.orders

SELECT c.first_name, o.order_id FROM MyDatabase.dbo.customers AS c 
RIGHT JOIN MyDatabase.dbo.orders as o
ON c.id = o.customer_id

SELECT c.first_name, o.order_id, o.order_date, o.sales 
FROM MyDatabase.dbo.customers AS c 
FULL JOIN MyDatabase.dbo.orders as o
ON c.id = o.customer_id

SELECT *  FROM SQLRevision.dbo.Customers AS c 
LEFT JOIN SQLRevision.dbo.Orders AS o
ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL

--  ANTI JOIN
SELECT *
FROM MyDatabase.dbo.customers AS c 
RIGHT JOIN MyDatabase.dbo.orders as o
ON c.id = o.customer_id
WHERE c.id IS NULL

SELECT *
FROM MyDatabase.dbo.customers AS c 
LEFT JOIN MyDatabase.dbo.orders as o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL

SELECT *
FROM MyDatabase.dbo.customers AS c 
FULL JOIN MyDatabase.dbo.orders as o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL OR c.id IS NULL

SELECT *
FROM MyDatabase.dbo.customers AS c 
CROSS JOIN MyDatabase.dbo.orders as o



