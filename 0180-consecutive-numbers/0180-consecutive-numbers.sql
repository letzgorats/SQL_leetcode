# Write your MySQL query statement below


SELECT DISTINCT num as ConsecutiveNums 
FROM (
    SELECT id,num,
    LAG(num) OVER(order by id) as befores,
    LEAD(num) OVER(order by id) as after
    FROM LOGS
) N
WHERE num = befores and befores = after