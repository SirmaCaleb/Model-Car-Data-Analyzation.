-- List products with highest purchases prices, together with total quantity of products ordered for each products.
SELECT
    p.productCode,
    p.productName,
    p.buyPrice,
    SUM(od.quantityOrdered) AS totalOrdered
FROM
	mintclassics.products AS p
LEFT JOIN
	mintclassics.orderdetails AS od ON p.productCode = od.productCode
GROUP BY
	p.productCode, p.productName, p.buyPrice
ORDER BY
	buyPrice DESC