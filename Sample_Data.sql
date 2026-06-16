-- USERS RECORD

INSERT INTO users (name , email) VALUES
('Arun Kumar','arun@gmail.com'),
('Priya Sharma','priya@gmail.com'),
('Rahul Verma','rahul@gmail.com'),
('Sneha Reddy','sneha@gmail.com'),
('Karthik Raj','karthik@gmail.com'),
('Divya Nair','divya@gmail.com'),
('Vijay Kumar','vijay@gmail.com'),
('Anitha S','anitha@gmail.com'),
('Rohit Singh','rohit@gmail.com'),
('Meena Devi','meena@gmail.com'),
('Ajay Kumar','ajay@gmail.com'),
('Pooja Sharma','pooja@gmail.com'),
('Rakesh Patel','rakesh@gmail.com'),
('Nisha Gupta','nisha@gmail.com'),
('Manoj Kumar','manoj@gmail.com'),
('Kavya R','kavya@gmail.com'),
('Suresh B','suresh@gmail.com'),
('Deepika M','deepika@gmail.com'),
('Harish K','harish@gmail.com'),
('vishali' , 'vishali@gmail.com'),
('Lakshmi P','lakshmi@gmail.com');


-- CATEGORIES RECORD

INSERT INTO categories(category_name) VALUES 
('Salary'),
('Food'),
('Travel'),
('Shopping'),
('Bills'),
('Entertainment'),
('Freelance');


-- TRANSACTIONS RECORD

INSERT INTO transactions (user_id, category_id, type, amount, description, transaction_date)
VALUES
(1,1,'Income',35000,'Monthly Salary','2026-01-01'),
(1,2,'Expense',250,'Lunch','2026-01-02'),
(1,3,'Expense',500,'Bus Ticket','2026-01-03'),

(2,1,'Income',40000,'Monthly Salary','2026-01-01'),
(2,4,'Expense',1500,'Shopping Mall','2026-01-05'),
(2,3,'Expense',900,'Train Ticket','2026-01-13'),

(3,1,'Income',30000,'Salary','2026-01-01'),
(3,2,'Expense',300,'Dinner','2026-01-06'),
(3,4,'Expense',2500,'Mobile Purchase','2026-01-15'),

(4,7,'Income',5000,'Freelance Work','2026-01-07'),
(4,5,'Expense',1200,'Electricity Bill','2026-01-08'),
(4,2,'Expense',350,'Snacks','2026-01-16'),

(5,1,'Income',45000,'Salary','2026-01-01'),
(5,6,'Expense',800,'Movie','2026-01-10'),
(5,5,'Expense',1800,'Water Bill','2026-01-18'),

(6,1,'Income',38000,'Salary','2026-02-01'),
(6,2,'Expense',450,'Breakfast','2026-02-02'),
(6,4,'Expense',2000,'Clothes','2026-02-03'),

(7,7,'Income',7000,'Freelance Project','2026-02-04'),
(7,3,'Expense',1500,'Flight Ticket','2026-02-05'),
(7,6,'Expense',600,'Cinema','2026-02-06'),

(8,1,'Income',42000,'Salary','2026-02-01'),
(8,2,'Expense',700,'Restaurant','2026-02-03'),
(8,5,'Expense',2500,'Internet Bill','2026-02-05'),

(9,1,'Income',36000,'Salary','2026-02-01'),
(9,4,'Expense',3500,'Laptop Accessories','2026-02-08'),
(9,2,'Expense',400,'Tea & Snacks','2026-02-10'),

(10,1,'Income',50000,'Salary','2026-02-01'),
(10,3,'Expense',2200,'Train Journey','2026-02-12'),
(10,6,'Expense',1200,'Concert','2026-02-15');

-- VERIFY DATA

SELECT * FROM transactions;

SELECT * FROM users;

SELECT * FROM categories;

			
