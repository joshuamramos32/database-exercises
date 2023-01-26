USE employees;

SELECT CONCAT('Hello ', 'Codeup', '!');

SELECT CONCAT(first_name, '', last_name) FROM employees;

SELECT CURDATE();

SELECT CURTIME();

SELECT UNIX_TIMESTAMP();
SELECT UNIX_TIMESTAMP('2013-07-23');