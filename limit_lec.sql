USE employees;

SELECT * FROM departments WHERE dept_name LIKE '%u%'ORDER BY dept_no ;-- offset will skip the limit and go to the next set

SELECT emp_no, first_name, last_name FROM employees WHERE first_name LIKE 'M%'LIMIT 25 OFFSET 50;