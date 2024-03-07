# Write your MySQL query statement below

SELECT MAX(E.num) AS num
FROM (
    SELECT num
    FROM MyNumbers
    GROUP BY num 
    HAVING COUNT(num) = 1
) E;

-- SELECT CASE WHEN E.cnt = 1 THEN E.num
--         ELSE NULL
--         END AS num
-- FROM 
-- (
--     SELECT num, COUNT(num) as cnt
--     FROM MyNumbers
--     GROUP BY num 
-- ) E
-- WHERE E.cnt = 1 
-- ORDER BY E.num DESC
-- LIMIT 1
