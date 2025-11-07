-- TOTAL ORDERS KPI - MONTH-OVER-MONTH (MoM) DIFFERENCE & GROWTH PERCENTAGE
-- This query calculates:
-- Total number of orders per month
-- Difference in total orders between consecutive months
-- Month-over-Month (MoM) growth percentage

SELECT 
    MONTH(transaction_date) AS month,
    ROUND(COUNT(transaction_id)) AS total_orders,
    
    -- Difference between current and previous month's order count
    (COUNT(transaction_id) - 
     LAG(COUNT(transaction_id), 1) 
     OVER (ORDER BY MONTH(transaction_date))) AS mom_difference,
    
    -- Month-over-Month growth percentage
    ((COUNT(transaction_id) - 
      LAG(COUNT(transaction_id), 1) 
      OVER (ORDER BY MONTH(transaction_date))) /
      LAG(COUNT(transaction_id), 1) 
      OVER (ORDER BY MONTH(transaction_date))) * 100 AS mom_growth_percentage

FROM 
    coffee

WHERE 
    MONTH(transaction_date) IN (4, 5)  -- Comparing April (4) and May (5)

GROUP BY 
    MONTH(transaction_date)

ORDER BY 
    MONTH(transaction_date);