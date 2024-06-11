 -- Obtain a list of customers with highest total sales, together with total sales amount conducted by each customer. 
SELECT
    c.customerName,
    c.customerNumber,
    count(o.orderNumber) AS totalSales
FROM
    mintclassics.customers AS c
JOIN
    mintclassics.orders AS o ON c.customerNumber = o.customerNumber
GROUP BY
	c.customerNumber, c.customerName
ORDER BY 
    totalSales DESC