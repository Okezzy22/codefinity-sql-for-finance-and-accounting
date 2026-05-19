-- Write your code here
--Select 
--DATE_TRUNC('month', transaction_date) AS month_transdate,
--SUM(amount) as total_sales_amount
--from transactions
--where category = 'Sales'
--GROUP BY DATE_TRUNC('month', transaction_date)
--ORDER BY DATE_TRUNC('month', transaction_date) 

SELECT
    DATE_TRUNC('month', transaction_date)::date AS month,
    SUM(amount) AS total_sales
FROM transactions
WHERE category = 'Sales'
GROUP BY DATE_TRUNC('month', transaction_date)::date
ORDER BY DATE_TRUNC('month', transaction_date)::date;
