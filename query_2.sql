SELECT
  stu.name AS student_name,
  s.name AS subject_name,
  AVG(m.mark) AS avg_mark
FROM
  marks m
JOIN
  students stu ON m.student_id = stu.id
JOIN
  subjects s ON m.subject_id = s.id
WHERE
  subject_id = 5
GROUP BY
  stu.name, s.name
ORDER BY
  avg_mark DESC
LIMIT
  1;