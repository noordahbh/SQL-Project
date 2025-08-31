
 SELECT 
	MIN(order_date) AS first_order,
	MAX(order_date) AS last_order,
	DATEDIFF(YEAR,MIN(order_date),MAX(order_date)) AS order_range_year
FROM [gold.fact_sales]

SELECT
	MIN(birthdate) AS oldest_birhtdate,
	DATEDIFF(YEAR,MIN(birthdate),GETDATE()) AS oldest_age,
	MAX(birthdate) AS youngest_birthdate,
	DATEDIFF(YEAR,MAX(birthdate),GETDATE()) AS youngest_age
FROM [gold.dim_customers]
