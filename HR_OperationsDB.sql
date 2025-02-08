
USE `second database`;

# Write a query to display the name (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000. 

SELECT first_name, last_name,salary
FROM employees
WHERE salary NOT BETWEEN 10000 AND 15000;

# Write a query to display the name (first_name, last_name) and department ID of all employees in departments 30 or 100 in ascending order.#

SELECT first_name, last_name, department_id
FROM employees
WHERE department_id IN (30, 100)
ORDER BY department_id ASC;

#Write a query to display the name (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000 and are in 
#departments 30 or 100

SELECT first_name, last_name,salary
FROM employees
WHERE department_id IN (30,100)
AND salary NOT BETWEEN 10000 AND 15000;

#Write a query to display the name (first_name, last_name) and hire date for all employees who were hired in 1987. 

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date = 1987;

#Write a query to display the first_name of all employees who have both "b" and "c" in their first name.

SELECT first_name
FROM employees
WHERE first_name LIKE '%a%'
AND first_name LIKE '%c%';

#Write a query to display the last name, job, and salary for all employees whose job is that of a Programmer or a Shipping Clerk, and whose salary is not equal to 
$4,500, $10,000, or $15,000.

SELECT 









