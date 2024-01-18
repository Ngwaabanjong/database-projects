-- DML (Data Manipulation Language) queries:

-- 1. Insert Query
INSERT INTO Employees (first_name, last_name, email, phone_number, hire_date, job_title, salary, department)
VALUES ('Sarah', 'Johnson', 'sarah.johnson@example.com', '555-1234', '2021-01-15', 'Quality Assurance Analyst', 75000.00, 'IT');

-- 2. Retrieve all columns for all employees
SELECT * FROM Employees;

-- 3. Retrieve only the first name, last name, and email for employees in the IT department
SELECT first_name, 
    last_name, 
    email 
FROM Employees 
WHERE department = 'IT';

-- 4. UPDATE:
-- Use Case: Increase the salary for all employees in the Sales department.
UPDATE Employees 
SET salary = salary * 1.1 
WHERE department = 'Sales';

-- 5. DELETE:
-- Use Case: Remove an employee from the Employees table based on their email.
DELETE FROM Employees 
WHERE email = 'john.doe@example.com';

-- Use Case: Remove an employee when databse is protected using primary key
DELETE FROM Employees 
WHERE employeeId = 'XP100222'
AND Id = '8'; --specify primary key

-- 6 SELECT with WHERE clause:
-- Use Case: Retrieve employees hired after a specific date.
SELECT * FROM Employees 
WHERE hire_date > '2022-01-01';

-- 7. SELECT with ORDER BY:
-- Use Case: Retrieve employees in the Finance department ordered by salary in descending order.
SELECT * FROM Employees 
WHERE department = 'Finance' 
ORDER BY salary 
DESC;

-- 8. SELECT with JOIN:
-- Use Case: Retrieve employees along with their department names.
SELECT e.*, d.department_name 
FROM Employees e
INNER JOIN Departments d 
ON e.department = d.department_id;

-- 9. SELECT with GROUP BY and HAVING:
-- Use Case: Find departments with average salary greater than $80,000.
SELECT department, AVG(salary) 
as avg_salary 
FROM Employees 
GROUP BY department 
HAVING avg_salary > 80000;

-- 10. SELECT with LIMIT:
-- Use Case: Retrieve the top 10 highest-paid employees.
SELECT * FROM Employees 
ORDER BY salary 
DESC LIMIT 10;

-- 11. SELECT with DISTINCT:
-- Use Case: Retrieve unique job titles in the Employees table.
SELECT DISTINCT job_title 
FROM Employees;

-- 12. UPDATE Admin User:
-- Use Case: Update the employee when database is protected using primary key.
UPDATE Employees.Admin 
SET role = 1 
WHERE employeeId = 'XY230214' 
AND Id = '8'; --specify primary key here


-- 13. UPDATE with JOIN:
-- Use Case: Update the salary of all IT employees.
UPDATE Employees e
INNER JOIN Departments d 
ON e.department = d.department_id
SET e.salary = e.salary * 1.05
WHERE d.department_name = 'IT';

-- TO SEE PRIMARY KEY:
SHOW KEYS FROM boyd_web.Oauth_Admin WHERE Key_name = 'PRIMARY';

-- Disable safe update mode (not recommended for security reasons):
SET SQL_SAFE_UPDATES = 0;
UPDATE employee.table SET role = 1 WHERE employeeId = 'NU120000';