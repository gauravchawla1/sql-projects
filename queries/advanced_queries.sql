-- 1. Top 3 highest paid employees
SELECT name, salary
FROM employees
ORDER BY salary DESC
LIMIT 3;

-- 2. Employees whose salary is above department average
SELECT e.name, e.salary, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE e.salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department_id = e.department_id
);

-- 3. Ranking employees by salary within each department
SELECT 
    e.name,
    d.department_name,
    e.salary,
    RANK() OVER (PARTITION BY d.department_name ORDER BY e.salary DESC) AS salary_rank
FROM employees e
JOIN departments d ON e.department_id = d.department_id;

-- 4. ADVANCED BUSINESS CHALLENGE
-- Find employee(s) with maximum hours on high-budget projects (>200k)

SELECT employee_id, name, total_hours
FROM (
    SELECT 
        e.employee_id,
        e.name,
        SUM(ep.hours_worked) AS total_hours,
        RANK() OVER (ORDER BY SUM(ep.hours_worked) DESC) AS rnk
    FROM employees e
    JOIN employee_projects ep ON e.employee_id = ep.employee_id
    JOIN projects p ON ep.project_id = p.project_id
    WHERE p.budget > 200000
    GROUP BY e.employee_id, e.name
) t
WHERE rnk = 1;
