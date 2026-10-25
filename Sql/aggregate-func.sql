SELECT * FROM SQLRevision.dbo.Products

SELECT COUNT(*) AS 'No. Of Row', SUM(Price) AS 'Total Price', CAST(AVG(Price)
AS DECIMAL(10,2)) AS 'Avg Of product Price' FROM SQLRevision.dbo.Products

SELECT Category, COUNT(*) AS 'No. Of Row', SUM(Price) AS 'Total Price', ROUND(AVG(Price),10)
AS 'Avg Of product Price' FROM SQLRevision.dbo.Products GROUP BY Category

SELECT Category, COUNT(*) AS 'ProductCount' FROM SQLRevision.dbo.Products 
GROUP BY Category 
HAVING COUNT(*) > 2;

SELECT Category,COUNT(*) AS 'Total Products' FROM SQLRevision.dbo.Products 
GROUP BY Category

SELECT Category, AVG(Price) AS 'AveragePrice' FROM SQLRevision.dbo.Products GROUP BY Category 
HAVING AVG(Price) >5000




