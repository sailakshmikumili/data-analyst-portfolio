# Northwind SQL Project – Customer, Product & Order Analysis

##  Project Overview
This project uses the **Northwind sample database** to perform
intermediate-level SQL analysis focused on customer activity,
product distribution, supplier dependency, and employee workload.

The analysis is primarily **COUNT-based** and demonstrates
practical use of joins and aggregation for business insights.

---

##  Business Objectives
- Analyze customer distribution and repeat purchasing behavior
- Identify inactive customers with zero orders
- Understand product distribution by supplier
- Evaluate order workload across employees

---

## SQL Concepts Used
- COUNT
- GROUP BY
- HAVING
- INNER JOIN
- LEFT JOIN
- Subqueries
- ORDER BY

---

## Analysis Breakdown

### 1. Customers by Country
- Identified countries with the highest number of customers
- Revealed geographic concentration of customers

### 2. Top Customers & Most Frequently Purchased Products
- Identified repeat customers based on order count
- Analyzed products frequently purchased by top customers

### 3. Inactive Customers
- Used LEFT JOIN and HAVING to find customers with zero orders
- Highlighted re-engagement opportunities

### 4. Product Distribution by Supplier
- Counted products supplied by each supplier
- Identified supplier dependency risk

### 5. Order Distribution by Employee
- Analyzed order workload per employee
- Detected uneven workload distribution

---

### SQL Queries


### 1. Customers by Country

SELECT Country, COUNT(*) AS TotalCountFROM CustomersGROUP BY CountryORDER BY TotalCount DESC;


### 2. Top Customers & Most Frequently Purchased Products

SELECT  p.ProductName,  tc.CustomerName,  COUNT(*) AS OrderCountFROM (    SELECT TOP 5      c.CustomerID,      c.CustomerName,      COUNT(o.OrderID) AS OrderCount    FROM Customers c    JOIN Orders o      ON c.CustomerID = o.CustomerID    GROUP BY c.CustomerID, c.CustomerName    ORDER BY COUNT(o.OrderID) DESC) tcJOIN Orders o  ON tc.CustomerID = o.CustomerIDJOIN OrderDetails od  ON o.OrderID = od.OrderIDJOIN Products p  ON od.ProductID = p.ProductIDGROUP BY  p.ProductName,  tc.CustomerNameORDER BY  OrderCount DESC;

### 3.Inactive Customers

SELECT    c.CustomerID,    c.CompanyName,    COUNT(o.OrderID) AS OrderCountFROM Customers cLEFT JOIN Orders o    ON c.CustomerID = o.CustomerIDGROUP BY    c.CustomerID,    c.CompanyNameHAVING COUNT(o.OrderID) = 0ORDER BY c.CompanyName;

###  4. Product Distribution by Supplier

SELECTs.SupplierName,COUNT(p.ProductID) AS ProductCountFROM Suppliers sLEFT JOIN Products pON s.SupplierID = p.SupplierIDGROUP BY s.SupplierNameORDER BY ProductCount DESC;

### 5. Order Distribution by Employee

SELECTCONCAT(e.FirstName, ' ', e.LastName) AS EmployeeName,COUNT(o.OrderID) AS OrderCountFROM Employees eLEFT JOIN Orders oON e.EmployeeID = o.EmployeeIDGROUP BYe.FirstName,e.LastNameORDER BY OrderCount DESC;



