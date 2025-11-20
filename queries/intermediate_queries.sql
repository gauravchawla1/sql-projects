-- Employees with their department names
SELECT e.name, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id;

-- Total salary per department
SELECT d.department_name, SUM(e.salary) AS total_salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name;

-- Employees who joined after 2020
SELECT name, joining_date
FROM employees
WHERE joining_date > '2020-01-01';
