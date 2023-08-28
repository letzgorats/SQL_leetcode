-- my sql
SELECT COALESCE(b.unique_id, 'null') AS unique_id, a.name
FROM Employees a
LEFT JOIN EmployeeUNI b ON a.id = b.id

-- oracle
SELECT b.unique_id AS unique_id, a.name
FROM Employees a, EmployeeUNI b
WHERE a.id = b.id (+)

## NVL function(Oracle) instead of IFNULL or COALESCE (Mysql)
## (+) symbol is indeed Oracle's old notation for performing an outer join.
## 왼쪽 테이블 기준으로 조인 걸 때는 오른쪽에 (+) / 오른쪽 테이블 기준으로 조인 걸 때는 왼쪽에 (+)
