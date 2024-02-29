# Write your MySQL query statement below
SELECT firstName, lastName, city, state
FROM Address A RIGHT JOIN Person P ON A.personId = P.personId

