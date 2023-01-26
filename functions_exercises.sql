USE employees;


SELECT CONCAT(first_name,'',last_name) FROM employees WHERE last_name LIKE '%E%';

SELECT * FROM employees WHERE birth_date AND month(birth_date) = 12 AND day(birth_date) = 25;

SELECT * FROM employees  WHERE  birth_date AND month(birth_date) = 12 AND day(birth_date) = 25 AND year(hire_date)  BETWEEN 1990 and 2000 ORDER BY hire_date DESC;

SELECT DATEDIFF(NOW(), hire_date) FROM employees WHERE birth_date AND month(birth_date) = 12 AND day(birth_date) = 25 and year(hire_date) BETWEEN 1990 and 2000 ORDER BY hire_date DESC ;

