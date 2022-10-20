-- Products에 CategoryID가 5, 6를 표시, 내용 프로덕트 이름, 공급자 이름 출력
SELECT Products.ProductName, Suppliers.SupplierName
FROM Products
INNER JOIN Suppliers
ON Products.SupplierID = Suppliers.SupplierID
WHERE Products.CategoryID = 5 OR Products.CategoryID = 6;

        