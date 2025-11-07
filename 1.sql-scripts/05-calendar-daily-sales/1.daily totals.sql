-- DAILY TOTALS 
-- Returns total sales (sum of unit_price * qty), total quantity sold, and total orders
-- for a single day. 

SELECT
    CONCAT(ROUND(SUM(unit_price * transaction_qty) / 1000.0, 1), 'K') AS total_sales,        -- revenue in thousands
    CONCAT(ROUND(SUM(transaction_qty) / 1000.0, 1), 'K')                  AS total_quantity_sold,-- qty in thousands
    CONCAT(ROUND(COUNT(transaction_id) / 1000.0, 1), 'K')                 AS total_orders        -- orders in thousands
FROM
    coffee
WHERE
    transaction_date = '2023-05-18';      -- filter for 18 May 2023