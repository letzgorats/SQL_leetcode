# Write your MySQL query statement below

(
    SELECT U.name as results
    FROM MovieRating R JOIN Users U ON R.user_id = U.user_id
    GROUP BY U.user_id
    ORDER BY COUNT(R.user_id) DESC, U.name
    LIMIT 1
)

UNION ALL

(
    SELECT M.title as results
    FROM MovieRating R JOIN Movies M ON R.movie_id = M.movie_id
    WHERE EXTRACT(YEAR_MONTH FROM R.created_at) = 202002
    GROUP BY R.movie_id
    ORDER BY AVG(R.rating) DESC, M.title
    LIMIT 1

)