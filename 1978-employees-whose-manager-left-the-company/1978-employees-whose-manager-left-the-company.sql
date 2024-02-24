# Write your MySQL query statement below
# Write your MySQL query statement below
SELECT employee_id
FROM Employees
WHERE 1=1 
AND salary < 30000
AND manager_id not in 
(   select employee_id
    from Employees
)
ORDER BY employee_id
