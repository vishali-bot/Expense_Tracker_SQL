-- TRAIL
-- How much money was earned?

SELECT SUM(amount) AS Total_Earning FROM transactions WHERE type = 'Income';

--How much money was spent?

SELECT SUM(amount) AS Total_spent FROM transactions WHERE type = 'Expense';

--Which category costs the most?




--BEGINNER
--Show all transactions.

SELECT * FROM transactions;

--Show all expenses.

SELECT * FROM transactions WHERE type='Expense';

--Show all income.

SELECT * FROM transactions WHERE type='Income';

--Show expenses above ₹5000.

SELECT * FROM transactions WHERE type = 'Expense' AND amount > 5000;

--Sort transactions by amount.

SELECT * FROM transactions ORDER BY amount ;


--INTERMEDIATE
--Total income.

SELECT SUM(amount) AS total_income FROM transactions WHERE type = 'Income';

--Total expense.

SELECT SUM(amount) AS total_expense FROM transactions WHERE type = 'Expense';

--Average expense.

SELECT AVG(amount) AS average_expense FROM  transactions WHERE type = 'Expense';

--Highest expense.

SELECT MAX(amount) AS highest_expense FROM  transactions WHERE type = 'Expense';

--Lowest expense.
SELECT MIN(amount) AS lowest_expense FROM  transactions WHERE type = 'Expense';

--ADVANCED
--Category-wise spending.
--User-wise spending.
--Monthly reports.
--Transactions above average amount.
--Top 5 spenders.