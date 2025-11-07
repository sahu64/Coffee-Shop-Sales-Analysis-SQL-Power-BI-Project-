-- TOTAL ORDERS
-- This query counts the total number of transactions (orders)
-- for a specific month — here, May (month 5).
-- Each transaction_id represents one order.

SELECT 
    COUNT(transaction_id) AS Total_Orders
FROM 
    coffee
WHERE 
    MONTH(transaction_date) = 5; 