SELECT g.id  AS group_id,
       s.id AS subject_id,
       AVG(m.mark) AS average_mark
FROM groups g
INNER JOIN students stu ON g.id = stu.group_id
INNER JOIN marks m ON stu.id = m.student_id
INNER JOIN subjects s ON m.subject_id = s.id
WHERE s.id = 3
GROUP BY g.name, s.name
ORDER BY average_mark DESC;
