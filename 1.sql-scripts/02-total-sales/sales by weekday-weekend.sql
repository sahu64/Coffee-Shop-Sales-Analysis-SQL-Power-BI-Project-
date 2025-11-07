-- SALES BY WEEKDAY / WEEKEND
-- Compares total sales on weekends vs. weekdays.
-- DAYOFWEEK() returns 1 (Sunday) and 7 (Saturday) for weekends.


SELECT 
    CASE 
        WHEN DAYOFWEEK(transaction_date) IN (1, 7) THEN 'Weekends'
        ELSE 'Weekdays'
    END AS day_type,
    ROUND(SUM(unit_price * transaction_qty), 2) AS Total_Sales
FROM 
    coffee
WHERE 
    MONTH(transaction_date) = 5    
GROUP BY 
    CASE 
        WHEN DAYOFWEEK(transaction_date) IN (1, 7) THEN 'Weekends'
        ELSE 'Weekdays'
    END
ORDER BY 
    Total_Sales DESC;   -- Sort by highest sales