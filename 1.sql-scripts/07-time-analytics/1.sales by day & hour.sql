-- SALES BY DAY AND HOUR
-- Retrieves total sales, total quantity sold, and total orders
-- for a specific weekday and hour within a given month.
-- Useful for identifying busiest times of day.

SELECT 
    ROUND(SUM(unit_price * transaction_qty)) AS Total_Sales,
    SUM(transaction_qty) AS Total_Quantity,
    COUNT(*) AS Total_Orders
FROM 
    coffee
WHERE 
    DAYOFWEEK(transaction_date) = 3    -- 1=Sunday, 2=Monday, 3=Tuesday, ..., 7=Saturday
    AND HOUR(transaction_time) = 8     -- Filter for transactions made during hour 8 (8 AM)
    AND MONTH(transaction_date) = 5;   -- Filter for May (month number 5)