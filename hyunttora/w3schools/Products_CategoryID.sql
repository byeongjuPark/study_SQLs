--문제 : 
-- Products에 CategoryID가 5,6 을 표시 , 내용에 프로덕트 이름, 공급자 이름 출력 ? 
-- 정답 : 13개 



SELECT Products.ProductName,Suppliers.SupplierName
FROM Products
INNER JOIN Suppliers
ON Products.SupplierID  = Suppliers.SupplierID  
AND Products.CategoryID IN(5,6);


-- 답
-- Number of Records: 13
-- ProductName	SupplierName
-- Mishi Kobe Niku	Tokyo Traders
-- Alice Mutton	Pavlova, Ltd.
-- Gustaf's Knäckebröd	PB Knäckebröd AB
-- Tunnbröd	PB Knäckebröd AB
-- Thüringer Rostbratwurst	Plutzer Lebensmittelgroßmärkte AG
-- Singaporean Hokkien Fried Mee	Leka Trading
-- Filo Mix	G'day, Mate
-- Perth Pasties	G'day, Mate
-- Tourtière	Ma Maison
-- Pâté chinois	Ma Maison
-- Gnocchi di nonna Alice	Pasta Buttini s.r.l.
-- Ravioli Angelo	Pasta Buttini s.r.l.
-- Wimmers gute Semmelknödel	Plutzer Lebensmittelgroßmärkte AG