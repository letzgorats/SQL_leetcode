# ORACLE solution1)

SELECT e1.employee_id, e1.name, count(e1.employee_id) as reports_count, round(avg(e2.age)) as average_age
FROM Employees e1, Employees e2
WHERE 1=1
AND e1.employee_id = e2.reports_to
-- AND e2.age is not NULL
group by e1.employee_id,e1.name
order by e1.employee_id

# ORACLE solution2 subquery) 
SELECT e1.REPORTS_TO AS EMPLOYEE_ID,
    (SELECT NAME 
     FROM EMPLOYEES e2
     WHERE e1.REPORTS_TO = e2.EMPLOYEE_ID
     ) AS NAME,
     COUNT(e1.EMPLOYEE_ID) AS REPORTS_COUNT,
     ROUND(AVG(e1.AGE)) AS AVERAGE_AGE
FROM EMPLOYEES e1
WHERE e1.REPORTS_TO IS NOT NULL
GROUP BY e1.REPORTS_TO
ORDER BY e1.REPORTS_TO;

