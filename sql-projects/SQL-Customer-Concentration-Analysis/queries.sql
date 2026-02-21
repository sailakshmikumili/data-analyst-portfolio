-- Customer Concentration Analysis

SELECT
  CASE 
    WHEN Country IN ('USA', 'France', 'Germany') THEN 'Top Markets'
    ELSE 'Other Countries'
  END AS Market_Group,
  COUNT(*) AS Customer_Count
FROM Northwind.dbo.Customers
GROUP BY
  CASE 
    WHEN Country IN ('USA', 'France', 'Germany') THEN 'Top Markets'
    ELSE 'Other Countries'
  END;