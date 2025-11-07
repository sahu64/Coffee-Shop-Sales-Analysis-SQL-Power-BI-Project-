-- TOTAL SALES
-- calculates the total sales for a specific month (May).
-- Formula: Total Sales = SUM(Unit Price × Quantity)

SELECT 
    ROUND(SUM(unit_price * transaction_qty)) AS Total_Sales
FROM 
    coffee
WHERE 
    MONTH(transaction_date) = 5;
    