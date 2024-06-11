-- View total inventory in each warehouse from highest to lowest 
SELECT
	w.warehouseCode,
    w.warehouseName,
    SUM(p.quantityInStock) AS totalInventory
FROM
	mintclassics.warehouses AS w
LEFT JOIN
	mintclassics.products AS p ON w.wareHouseCode = p.wareHouseCode
GROUP BY
	w.warehouseCode,
    w.warehouseName
ORDER BY
	totalInventory DESC
    