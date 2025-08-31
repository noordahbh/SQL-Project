--the Top 5 products generate the highest revenue
SELECT TOP 5
p.product_name,
SUM (f.sales_amount)total_revenue
FROM [gold.fact_sales] f
LEFT JOIN [gold.dim_products] p
ON p.product_key=f.product_key
GROUP BY p.product_name
ORDER BY total_revenue DESC

SELECT * 
FROM (
	SELECT p.product_name, SUM(f.sales_amount) AS Total_Revenue,
	ROW_NUMBER() OVER(ORDER BY SUM(f.sales_amount) DESC) AS Rank_Product
	FROM [gold.fact_sales] f
	LEFT JOIN [gold.dim_products] p ON f.product_key = p.product_key
	GROUP BY product_name
)t
WHERE Rank_Product <= 5;

--the 5 worst Performin products in terms of sales 
SELECT TOP 5
p.product_name,
SUM (f.sales_amount)total_revenue
FROM [gold.fact_sales] f
LEFT JOIN [gold.dim_products] p
ON p.product_key=f.product_key
GROUP BY p.product_name
ORDER BY total_revenue 

