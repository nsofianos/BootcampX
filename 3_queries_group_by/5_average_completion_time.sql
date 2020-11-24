SELECT students.name AS student, avg(assignment_submissions.duration) AS avg_assign_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE end_date IS NULL
GROUP BY student
ORDER BY avg_assign_duration DESC;