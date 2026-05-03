-- ¿Qué categoría genera más ventas?
SELECT 
	category, 
	SUM(sales)AS total_ventas 
FROM ventas 
GROUP BY category 
ORDER BY total_ventas DESC;

-- ¿Cuál es la región más rentable?
SELECT 
	region, 
	SUM(profit) AS rentabilidad
FROM ventas 
GROUP BY region 
ORDER BY rentabilidad DESC;

-- ¿Cómo evolucionaron las ventas mes a mes?
SELECT 
	EXTRACT(YEAR FROM order_date) AS anio,
	EXTRACT(MONTH FROM order_date) AS mes,
	SUM(sales)
FROM ventas
GROUP BY anio, mes
ORDER BY anio, mes;

-- ¿Qué productos tienen ganancia negativa?
SELECT 
	product_name, 
	SUM(profit) AS ganancias 
FROM ventas 
GROUP BY product_name 
HAVING SUM(profit) < 0
ORDER BY ganancias ASC;