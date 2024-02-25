# having
SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(student) >= 5

# subQuery
-- SELECT class
-- FROM (
--     SELECT class,COUNT(student) as cnt
--     FROM Courses
--     GROUP BY class
-- ) C
-- WHERE C.cnt >= 5