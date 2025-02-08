Comprehensive SQL Query Report

1. Introduction
This report provides an analysis of various SQL queries executed on different datasets, primarily focusing on employee and loan records. The queries cover data extraction, filtering, grouping, ordering, and joining operations to derive meaningful insights.

2. Loan Data Analysis

Extracting Loan IDs:

SELECT loan_id FROM loans;

This query retrieves the loan identification numbers from the loans table.

Extracting Loan Details:

SELECT Loan_id, book_id, user_id FROM loans;

This query extracts loan-specific details, including the book ID and user ID associated with each loan.

3. Employee Data Analysis

Filtering Employees by Name and Gender:

SELECT * FROM employees WHERE first_name ='Denis' AND gender ='F';

Retrieves all records of employees named "Denis" who are female.

Filtering Employees Using Multiple Conditions:

SELECT * FROM employees WHERE first_name ='Denis' OR gender ='F' OR hire_date > '1998-01-01';

Extracts employees who either have the first name Denis, are female, or were hired after 1998.

Retrieving Employee Names:

SELECT first_name, last_name FROM employees;

Displays only first and last names from the employees table.

4. Using IN and NOT IN Operators

Filtering Specific Employee Names:

SELECT * FROM employees WHERE first_name IN ('Denis', 'Cathie', 'Mark');

Retrieves employees whose first names match the given list.

Excluding Specific Employee Names with Additional Condition:

SELECT * FROM employees WHERE first_name NOT IN ('Denis', 'Cathie', 'Mark') AND birth_date = '1953-09-03';

Retrieves employees not named "Denis," "Cathie," or "Mark" but were born on a specific date.

5. Date Range Queries

Filtering by Hire Date Range:

SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '2000-12-31';

Retrieves employees hired between 1990 and 2000.

Finding Employees Hired in 2000:

SELECT * FROM employees WHERE hire_date LIKE ('2000%');

Extracts all employees hired in the year 2000.

Retrieving Female Employees Hired After 2000:

SELECT * FROM employees WHERE hire_date >= '2000-01-01' AND gender ='F';

Extracts female employees hired in or after 2000.

6. Salary Data Analysis

Finding Employees with Salaries Above $50,000:

SELECT * FROM salaries WHERE salary > 50000;

Extracts employees earning more than $50,000 annually.

Filtering Salaries Between $66,000 and $77,000:

SELECT * FROM salaries WHERE salary BETWEEN 66000 AND 77000;

Retrieves records of employees earning within the specified range.

Finding the Average Salary by Gender:

SELECT ROUND(AVG(salary), 2) AS Average_salaries, gender FROM employees AS em JOIN salaries AS s ON em.emp_no = s.emp_no GROUP BY gender;

Computes the average salary for male and female employees.

7. Using LIKE and NOT LIKE Operators

Filtering Employee Names Starting with "Mar":

SELECT * FROM employees WHERE first_name LIKE ('Mar%');

Extracts employees whose first names begin with "Mar".

8. DISTINCT Queries

Finding Unique Hire Dates:

SELECT DISTINCT hire_date FROM employees;

Retrieves a list of unique hiring dates.

Finding Unique Genders:

SELECT DISTINCT gender FROM employees;

Extracts distinct gender values from the employees table.

9. JOIN Operations

Joining Department Manager and Department Tables:

SELECT dm.emp_no, d.dept_name FROM dept_manager AS dm JOIN departments AS d ON dm.dept_no = d.dept_no;

Fetches employee numbers and department names by linking the dept_manager and departments tables.

RIGHT JOIN Example:

SELECT dm.emp_no, d.dept_name FROM dept_manager AS dm RIGHT JOIN departments AS d ON dm.dept_no = d.dept_no;

Ensures all department records are displayed even if there is no corresponding department manager.

Joining Employees with Salaries and Applying Conditions:

SELECT em.emp_no, em.first_name, em.last_name, s.salary FROM employees AS em JOIN salaries AS s ON em.emp_no = s.emp_no WHERE s.salary > 145000 ORDER BY salary DESC;

Retrieves employees earning above $145,000 and sorts them in descending order.

10. Data Modification

Deleting a Specific Employee Title Record:

DELETE FROM titles WHERE emp_no = 1003;

Removes the title record for employee number 1003.

11. Grouping and Ordering Data

Grouping Departments by Department Number:

SELECT dept_no, dept_name FROM departments GROUP BY dept_no ORDER BY dept_no;

Lists all departments, grouped and sorted by department number.

Limiting the Number of Results in a Query:

SELECT emp_no, dept_no, from_date, to_date FROM dept_manager GROUP BY dept_no LIMIT 15;



