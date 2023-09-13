SELECT t.name AS teacher_name, AVG(m.mark) AS average_mark
FROM teachers t
JOIN subjects s ON t.id = s.teacher_id
JOIN marks m ON s.id = m.subject_id
GROUP BY t.name;