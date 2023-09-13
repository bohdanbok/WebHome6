SELECT
  student_id,
  subject_id,
  AVG(mark) AS avg_mark
FROM
  marks
WHERE
  subject_id = 5
GROUP BY
  student_id
ORDER BY
  avg_mark DESC
LIMIT
  1;