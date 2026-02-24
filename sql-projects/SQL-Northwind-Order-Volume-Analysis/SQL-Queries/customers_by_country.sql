
-- Customers by Country

SELECT Country, COUNT(*) AS TotalCountFROM CustomersGROUP BY CountryORDER BY TotalCount DESC;