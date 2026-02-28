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
