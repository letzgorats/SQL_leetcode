
# solution using LAG, DATE_SUB
SELECT id
FROM (
    SELECT id,
            recordDate,
            temperature,
            LAG(recordDate,1) OVER(ORDER BY recordDate) AS prev_Date,
            LAG(temperature,1) OVER(ORDER BY recordDate) AS prev_Temp
    FROM Weather
) W
WHERE W.prev_temp < W.temperature
AND DATE_SUB(W.recordDate,INTERVAL 1 DAY) = W.prev_Date


# solution using DATEDIFF
-- SELECT b.id
-- FROM Weather a, Weather b
-- WHERE 1=1
-- AND DATEDIFF(b.recordDate, a.recordDate) = 1
-- AND a.temperature < b.temperature
