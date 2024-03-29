# # Write your MySQL query statement below
# SELECT CASE WHEN mod(id,2) = 0 THEN id-1
#             WHEN mod(id,2) = 1 AND id+1 
#             NOT IN (
#                 SELECT id
#                 FROM SEAT
#             ) THEN id
#             ELSE id+1
#             END AS id,student
# FROM Seat
# ORDER BY id


# Write your MySQL query statement below
SELECT CASE WHEN id%2=0 THEN id-1
            WHEN (id%2!=0 AND id = (
                SELECT max(id)
                FROM Seat
            )) THEN id
            WHEN id%2!=0 THEN id+1
            END AS id, student
FROM Seat
ORDER BY id





