-- SALES BY STORE LOCATION
-- Calculates total sales per store for a specific month.
-- Helps identify which store branches generate the most revenue.

SELECT 
    store_location,
    SUM(unit_price * transaction_qty) AS Total_Sales
FROM 
    coffee
WHERE 
    MONTH(transaction_date) = 5     -- Filter for May
GROUP BY 
    store_location
ORDER BY 
    SUM(unit_price * transaction_qty) DESC; 