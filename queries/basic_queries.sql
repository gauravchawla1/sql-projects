-- List all employees
SELECT * FROM employees;

-- Find employees earning above 60k
SELECT name, salary
FROM employees
WHERE salary > 60000;

-- List departments alphabetically
SELECT * FROM departments
ORDER BY department_name;
