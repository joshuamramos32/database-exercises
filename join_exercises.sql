DROP DATABASE IF EXISTS join_test_db;
CREATE DATABASE join_test_db;
USE join_test_db;

DROP TABLE IF EXISTS roles;
CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);
DROP TABLE IF EXISTS users;
CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
                                             ('bob', 'bob@example.com', 1),
                                             ('joe', 'joe@example.com', 2),
                                             ('sally', 'sally@example.com', 3),
                                             ('adam', 'adam@example.com', 3),
                                             ('jane', 'jane@example.com', null),
                                             ('mike', 'mike@example.com', null);

SELECT users.name as user_name, roles.name as role_name
FROM users
JOIN roles ON users.role_id = roles.id;

USE employees;

SELECT d.dept_name AS Department_Name, CONCAT(first_name,',',last_name)AS Department_Manager
FROM departments AS d
JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
JOIN employees AS e ON dm.emp_no = e.emp_no
WHERE dm.to_date ='9999-01-01' AND e.gender = 'F'
ORDER BY d.dept_name;

SELECT t.title AS Title, count(t.title) AS 'Count'
FROM titles AS t
JOIN dept_emp AS de ON t.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name ='Customer Service'
AND de.to_date = '9999-01-01' AND t.to_date ='9999-01-01'
GROUP BY t.title;


SELECT d.dept_name AS Department_Name, CONCAT(e.first_name,' ',e.last_name)AS 'Name',s.salary AS 'Salary'
FROM employees AS e
JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
JOIN salaries AS s on dm.emp_no = s.emp_no
JOIN departments AS d on d.dept_no = dm.dept_no
WHERE s.to_date = '9999-01-01' AND dm.to_date = '9999=01-01'
ORDER BY d.dept_name;

