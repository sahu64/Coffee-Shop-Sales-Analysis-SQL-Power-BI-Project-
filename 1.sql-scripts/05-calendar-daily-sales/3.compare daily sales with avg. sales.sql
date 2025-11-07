-- COMPARING DAILY SALES WITH AVERAGE SALES
-- If total sales > average sales -> 'Above Average'
-- If total sales < average sales -> 'Below Average'
-- Otherwise -> 'Average'
-- ------------------------------------------------------------

SELECT
    day_of_month,        
    total_sales,         -- Daily total sales amount
    CASE
        WHEN total_sales > avg_sales THEN 'Above Average'
        WHEN total_sales < avg_sales THEN 'Below Average'
        ELSE 'Average'
    END AS sales_status  
FROM (
    
    SELECT
        DAY(transaction_date) AS day_of_month,                        -- Extract day of month
        SUM(unit_price * transaction_qty) AS total_sales,             -- Total sales for that day
        AVG(SUM(unit_price * transaction_qty)) OVER () AS avg_sales   -- Average of all daily sales for the month
    FROM
        coffee
    WHERE
        MONTH(transaction_date) = 5   -- Filter for May (change as needed)
    GROUP BY
        DAY(transaction_date)         
) AS sales_data
ORDER BY
    day_of_month;                     
