-- Write your query below
SELECT employee_id,
CASE
When employee_id % 2 = 1 AND name NOT LIKE 'M%' Then salary
Else 0
END AS bonus
FROM employees
ORDER BY employee_id;