-- Write your code here
Select 
    transaction_date, 
    amount,
    description,
    sum(amount) over(order by transaction_date rows 
    between unbounded preceding and current row) as running_total
from transactions
where category = 'Expense'
order by transaction_date