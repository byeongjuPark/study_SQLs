-- 서브 쿼리 활용

SELECT * 
FROM Customers
WHERE Country IN (SELECT Country 
                FROM Suppliers);