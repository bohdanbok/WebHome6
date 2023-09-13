SELECT DISTINCT sub.name AS course_name
FROM students stu
JOIN marks m ON stu.id = m.student_id
JOIN subjects sub ON m.subject_id = sub.id
WHERE stu.id = 19