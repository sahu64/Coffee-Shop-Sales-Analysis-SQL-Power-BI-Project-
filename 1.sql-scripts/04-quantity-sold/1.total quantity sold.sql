-- TOTAL QUANTITY SOLD
-- This query calculates the total quantity of products sold
-- for a specific month — here, May (month 5).
-- It sums up the transaction_qty column, representing the total units sold.

SELECT 
    SUM(transaction_qty) AS Total_Quantity_Sold
FROM 
    coffee
WHERE 
    MONTH(transaction_date) = 5;  -- Month 5 = May