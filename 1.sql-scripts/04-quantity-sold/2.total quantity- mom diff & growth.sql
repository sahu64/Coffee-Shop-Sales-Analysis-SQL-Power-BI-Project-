-- TOTAL QUANTITY SOLD KPI - MONTH-OVER-MONTH (MoM) DIFFERENCE & GROWTH
-- This query calculates:
-- Total quantity sold per month
-- Difference in total quantity sold compared to the previous month
-- Month-over-Month (MoM) growth percentage

-- The LAG() function retrieves the previous month's sales total

SELECT 
    MONTH(transaction_date) AS month,
    ROUND(SUM(transaction_qty)) AS total_quantity_sold,
    
    -- Difference between current and previous month's total quantity sold
    (SUM(transaction_qty) - 
     LAG(SUM(transaction_qty), 1) 
     OVER (ORDER BY MONTH(transaction_date))) AS mom_difference,
    
    -- Month-over-Month growth percentage in total quantity sold
    ((SUM(transaction_qty) - 
      LAG(SUM(transaction_qty), 1) 
      OVER (ORDER BY MONTH(transaction_date))) /
      LAG(SUM(transaction_qty), 1) 
      OVER (ORDER BY MONTH(transaction_date))) * 100 AS mom_growth_percentage

FROM 
    coffee

WHERE 
    MONTH(transaction_date) IN (4, 5)  -- Compare April (4) and May (5)

GROUP BY 
    MONTH(transaction_date)

ORDER BY 
    MONTH(transaction_date);