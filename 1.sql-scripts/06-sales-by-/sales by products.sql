-- SALES BY PRODUCTS (TOP 10)
-- Lists the top 10 best-selling products by total sales value.

SELECT 
    product_type,
    ROUND(SUM(unit_price * transaction_qty), 1) AS Total_Sales
FROM 
    coffee
WHERE 
    MONTH(transaction_date) = 5     
GROUP BY 
    product_type
ORDER BY 
    SUM(unit_price * transaction_qty) DESC
LIMIT 10;   -- Show only the top 10 products