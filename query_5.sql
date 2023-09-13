SELECT DISTINCT t.name AS teacher_name, s.name AS course_name
FROM teachers t
INNER JOIN subjects s ON t.id = s.teacher_id;
