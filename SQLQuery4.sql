SELECT SUM(sales_amount) AS Total_Sales FROM [gold.fact_sales]

SELECT SUM(quantity) AS Total_Items_Sold FROM [gold.fact_sales]

SELECT AVG(price) AS Avg_Price FROM [gold.fact_sales]

SELECT COUNT(DISTINCT order_number) AS Total_Orders FROM [gold.fact_sales]

SELECT COUNT(product_key) AS Total_Products FROM [gold.dim_products]

SELECT COUNT(customer_key) AS Total_Customers FROM [gold.dim_customers]

SELECT COUNT(DISTINCT customer_key) AS Total_Customers_Placed_Order FROM [gold.fact_sales] 

-- -------------------------------------------------
-- Generate a report that shows all key matrics of the business 
-- -------------------------------------------------

SELECT 'Total_Sales' AS measure_name, SUM(sales_amount) AS measure_value FROM [gold.fact_sales]
UNION ALL
SELECT 'Total_Items_Sold' AS measure_name, SUM(quantity) AS measure_value FROM [gold.fact_sales]
UNION ALL
SELECT 'Avg_Price' AS measure_name, AVG(price) AS measure_value FROM [gold.fact_sales]
UNION ALL
SELECT 'Total_Orders' AS measure_name, COUNT(DISTINCT order_number) AS measure_value FROM [gold.fact_sales]
UNION ALL
SELECT 'Total_Products' AS measure_name, COUNT(product_key) AS measure_value FROM [gold.dim_products]
UNION ALL
SELECT 'Total_Customers' AS measure_name, COUNT(customer_key) AS measure_value FROM [gold.dim_customers]
UNION ALL
SELECT 'Total_Customers_Placed_Order' AS measure_name, COUNT(DISTINCT customer_key) AS measure_value FROM [gold.fact_sales]
