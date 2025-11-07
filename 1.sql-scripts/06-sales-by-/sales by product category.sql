-- SALES BY PRODUCT CATEGORY
-- Shows total sales per product category for the given month.
-- Useful for category-level performance comparison.

SELECT 
    product_category,
    ROUND(SUM(unit_price * transaction_qty), 1) AS Total_Sales
FROM 
    coffee
WHERE 
    MONTH(transaction_date) = 5     
GROUP BY 
    product_category
ORDER BY 
    SUM(unit_price * transaction_qty) DESC;