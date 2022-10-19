-- 카테고리(Categories)에 10개 이상인 제품(Products)의
--  카테고리(CategoryID)가 무엇인지 확인

SELECT CategoryID, COUNT(ProductID)
FROM Products
GROUP BY CategoryID
HAVING COUNT(CategoryID) > 10;
     