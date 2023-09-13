SELECT name
FROM students
WHERE group_id = (SELECT id FROM groups WHERE id = 2);