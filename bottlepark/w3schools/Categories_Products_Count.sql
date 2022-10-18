--Categories 별로 구성된 제품 개수, 가격 평균/최고값/최저갑 표시

SELECT CategoryID, COUNT(*), AVG(Price), MAX(Price), MIN(Price)
FROM Products
GROUP BY CategoryID