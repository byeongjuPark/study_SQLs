--문제 : 분류(Categories)가 Produce, Beverages인 제품(Products) 총 갯수는 ?
--정답 : 17 개 
SELECT COUNT(*)
FROM Products
WHERE CategoryID IN (SELECT CategoryID
				FROM Categories
				WHERE CategoryName IN ('Produce','Beverages'));