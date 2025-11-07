-- TOTAL SALES KPI - MONTH-OVER-MONTH (MoM) DIFFERENCE & GROWTH
-- This query calculates:
-- Total sales for each month
-- Month-over-Month difference
-- Month-over-Month growth percentage

SELECT 
    MONTH(transaction_date) AS month,
    ROUND(SUM(unit_price * transaction_qty)) AS total_sales,
    
    -- Difference between current and previous month's total sales
    (SUM(unit_price * transaction_qty) - 
     LAG(SUM(unit_price * transaction_qty), 1) 
     OVER (ORDER BY MONTH(transaction_date))) AS mom_difference,
    
    -- Month-over-Month growth percentage
    ((SUM(unit_price * transaction_qty) - 
      LAG(SUM(unit_price * transaction_qty), 1) 
      OVER (ORDER BY MONTH(transaction_date))) /
      LAG(SUM(unit_price * transaction_qty), 1) 
      OVER (ORDER BY MONTH(transaction_date))) * 100 AS mom_growth_percentage

FROM 
    coffee

WHERE 
    MONTH(transaction_date) IN (4, 5)  -- Compare April (4) and May (5)

GROUP BY 
    MONTH(transaction_date)

ORDER BY 
    MONTH(transaction_date);