SELECT s.name AS student_name, m.mark, m.date
FROM students s
JOIN marks m ON s.id = m.student_id
JOIN subjects sub ON m.subject_id = sub.id
WHERE s.group_id = (SELECT id FROM groups WHERE id = 2)
AND sub.id = 2;