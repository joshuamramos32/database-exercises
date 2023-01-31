USE employees;

SELECT d.dept_name AS Department_Name, CONCAT(e.first_name,' ',e.last_name)AS 'Name',s.salary AS 'Salary'
FROM employees AS e
         JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
         JOIN salaries AS s on dm.emp_no = s.emp_no
         JOIN departments AS d on d.dept_no = dm.dept_no
WHERE s.to_date = '9999-01-01' AND dm.to_date = '9999=01-01'
ORDER BY d.dept_name;
# Can't quite do the same thing with a sub query unfortunately
SELECT e.first_name, e.last_name
FROM employees AS e
WHERE emp_no IN(
    SELECT emp_no
    FROM dept_manager
    WHERE to_date = '9999-01-01'
);

SELECT DISTINCT title
FROM titles
WHERE emp_no IN(
SELECT emp_no
FROM dept_emp
WHERE dept_no IN(
    SELECT dept_no FROM departments WHERE dept_name = 'Quality Management'
    ) AND emp_no IN(SELECT emp_no FROM employees WHERE first_name = 'Lucien')
  AND to_date = '9999-01-01')
AND to_date = '9999-01-01';

SELECT  title, COUNT(*)
FROM titles
WHERE emp_no IN(
    SELECT emp_no
    FROM dept_emp
    WHERE dept_no IN(
        SELECT dept_no FROM departments WHERE dept_name = 'Quality Management'
    ) AND emp_no IN(SELECT emp_no FROM employees WHERE first_name = 'Lucien')
      AND to_date = '9999-01-01')
  AND to_date = '9999-01-01'
GROUP BY title;

SELECT first_name, last_name
FROM employees AS e
WHERE emp_no IN(
    SELECT emp_no
    FROM dept_manager
    WHERE to_date = '9999-01-01' AND e.gender = 'F'
    );