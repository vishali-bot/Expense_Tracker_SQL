-- TRAIL
-- How much money was earned?

SELECT SUM(amount) AS Total_Earning FROM transactions WHERE type = 'Income';

--How much money was spent?

SELECT SUM(amount) AS Total_spent FROM transactions WHERE type = 'Expense';

--Which category costs the most?

SELECT MAX(type) AS max_category FROM transactions;

--Show all transactions.

SELECT * FROM transactions;

--Show all expenses.

SELECT * FROM transactions WHERE type = 'Expense';

--Show all income.

SELECT * FROM transactions WHERE type = 'Income';



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

SELECT DISTINCT category_name, type FROM transactions t1
INNER JOIN categories c1
ON t1.category_id = c1.category_id;

--User-wise spending.

SELECT name, SUM(amount) AS total_spending FROM transactions t1
INNER JOIN users u1
ON t1.user_id = u1.user_id
GROUP BY name;


--Transactions above average amount. avg amount 11771.666666666667

SELECT amount FROM transactions WHERE amount >(
SELECT AVG(amount) FROM transactions
);

--Top 5 spenders.

SELECT name, SUM(amount) AS total_spent FROM transactions t1
INNER JOIN users u1
ON t1.user_id = u1.user_id
GROUP BY name
ORDER BY total_spent DESC
LIMIT 5;

--Find most expensive transaction for each user .

----Find most expensive transaction for each user 

SELECT name, amount, type FROM transactions t1
JOIN users u1
ON t1.user_id = u1.user_id
WHERE t1.amount = (
    SELECT MAX(t2.amount)
    FROM transactions t2
    WHERE t2.user_id = t1.user_id
);