USE employees;

# Group by and count
SELECT DISTINCT first_name, last_name FROM employees;
SELECT first_name FROM employees GROUP BY first_name;
SELECT  first_name, last_name FROM employees GROUP BY first_name, last_name;

SELECT COUNT(*) From employees;
SELECT first_name, COUNT(first_name) From employees GROUP BY first_name;
SELECT first_name, COUNT(*) From employees GROUP BY first_name;
SELECT first_name, COUNT(*) From employees GROUP BY first_name ORDER BY COUNT(*) DESC;

#aliases

