-- (AVERAGE DAILY SALES FOR A GIVEN MONTH)

-- calculates the average daily sales amount for a specific month.
-- The inner query (subquery) first sums daily sales (unit_price × quantity) for each day.
-- The outer query then computes the average of those daily totals, showing
-- the overall average sales trend for that month (e.g., May).

SELECT 
    AVG(total_sales) AS average_sales   -- average daily sales for the month
FROM (
    SELECT 
        SUM(unit_price * transaction_qty) AS total_sales  -- daily total sales
    FROM 
        coffee
    WHERE 
        MONTH(transaction_date) = 5  -- Filter for May (use 1–12 for other months)
    GROUP BY 
        transaction_date              -- aggregate sales by day
) AS internal_query;
