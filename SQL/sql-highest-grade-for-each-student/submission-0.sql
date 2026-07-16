SELECT student_id, exam_id, score
FROM(
    SELECT student_id, exam_id, score,
    ROW_NUMBER() OVER(PARTITION by student_id ORDER BY score DESC, exam_id ASC) as rn
    FROM exam_results
) ranked_exams
WHERE rn = 1
ORDER BY student_id ASC;