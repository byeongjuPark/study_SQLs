-- 제품명, 가격, 주문 갯수 표시

SELECT Products.ProductName,Products.Price,SUM(OrderDetails.Quantity)
FROM Products
INNER JOIN OrderDetails
ON Products.ProductID  = OrderDetails.ProductID
GROUP BY Products.ProductName
