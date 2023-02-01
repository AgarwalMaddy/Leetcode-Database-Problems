# Write your MySQL query statement below
Select NAME , SUM(amount) as BALANCE  from Users 
INNER JOIN Transactions 
Where Users.account = Transactions.account 
Group By Transactions.account
HAVING  SUM(amount) > 10000;
