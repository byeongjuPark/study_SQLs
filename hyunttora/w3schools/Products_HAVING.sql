-- 문제 :
-- 카테고리에 제품이 10개 이상인 카테고리 표시
-- 답 : 5개 
SELECT CategoryID,COUNT(ProductID)
FROM Products
GROUP BY CategoryID
HAVING COUNT(ProductID) >= 10;