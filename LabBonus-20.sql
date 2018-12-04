USE Northwind;
/*  1 */ SELECT * FROM Customers;
/*  2 */ SELECT * FROM Customers WHERE City IN ('London', 'Paris');
/*  3 */ SELECT DISTINCT City FROM Customers;
/*  4 */ SELECT FirstName FROM Employees; 
/*  5 */ SELECT AVG(UnitPrice) AS "Average Unit Price" FROM Products;
/*  6 */ SELECT ProductName, Products.UnitsInStock, UnitPrice FROM Products 
			WHERE UnitPrice = (SELECT MAX(UnitPrice) 
			FROM Products);
/*  7 */ SELECT * FROM Employees WHERE Notes LIKE '%BA in%' OR Notes LIKE '%BA degree%';
/*  8 */ SELECT OrderID, Quantity, UnitPrice, Discount, Quantity * UnitPrice * (1.0 - Discount) AS "Total" 
			FROM [Order Details];
/*  9 */ SELECT * FROM Employees WHERE HireDate BETWEEN '1994-01-01' AND GETDATE();
/* 10 */ SELECT FirstName, HireDate, DATEDIFF(YEAR, HireDate, GETDATE()) AS "Time With Company" FROM Employees;  
/* 11 */ SELECT * FROM Products ORDER BY UnitsInStock;
		 SELECT * FROM Products ORDER BY UnitsInStock DESC;	
/* 12 */ SELECT * FROM Products WHERE UnitsInStock < 6;
/* 13 */ SELECT * FROM Products WHERE Discontinued = 1;
/* 14 */ SELECT * FROM Products WHERE ProductName LIKE '%Tofu%';  
/* 15 */ SELECT ProductName, UnitPrice FROM Products 
			WHERE UnitPrice = (SELECT MAX(UnitPrice) FROM Products);
/* 16 */ SELECT * FROM Employees WHERE HireDate > '1993-01-01';
/* 17 */ SELECT * FROM Employees WHERE TitleOfCourtesy IN ('Ms.', 'Mrs.');
/* 18 */ SELECT * FROM Employees WHERE HomePhone LIKE '%(206)%';