# Write your MySQL query statement below
SELECT query_name,
    ROUND((SUM(rating/position) / COUNT(query_name)),2) as quality,
    ROUND(100*AVG(rating < 3 ),2)as poor_query_percentage
FROM Queries
WHERE query_name IS NOT NULL
GROUP BY query_name 