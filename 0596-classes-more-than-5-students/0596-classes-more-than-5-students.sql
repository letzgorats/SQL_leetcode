# Write your MySQL query statement below
SELECT class
FROM (
    SELECT class,COUNT(student) as cnt
    FROM Courses
    GROUP BY class
) C
WHERE C.cnt >= 5