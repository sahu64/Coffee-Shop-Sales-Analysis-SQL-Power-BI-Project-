-- SALES BY HOUR (FOR MONTH OF MAY)
-- Displays total sales for each hour of the day (0–23).
-- Useful for understanding hourly traffic and sales trends.

SELECT 
    HOUR(transaction_time) AS Hour_of_Day,
    ROUND(SUM(unit_price * transaction_qty)) AS Total_Sales
FROM 
    coffee
WHERE 
    MONTH(transaction_date) = 5       
GROUP BY 
    HOUR(transaction_time)
ORDER BY 
    HOUR(transaction_time);  