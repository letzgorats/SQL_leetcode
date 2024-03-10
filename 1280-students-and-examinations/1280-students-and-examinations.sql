# Write your MySQL query statement below
SELECT S.student_id, student_name, SJ.subject_name,
    CASE WHEN COUNT(E.subject_name) = 0 THEN 0
    ELSE COUNT(E.subject_name)
    END as attended_exams
FROM Students S 
CROSS JOIN Subjects SJ 
LEFT JOIN Examinations E ON SJ.subject_name = E.subject_name
                        AND S.student_id = E.student_id 
GROUP BY student_name, SJ.subject_name, S.student_id
ORDER BY S.student_id, SJ.subject_name