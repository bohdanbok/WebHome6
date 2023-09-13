DROP TABLE IF EXISTS groups;
CREATE TABLE groups (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255)
);

DROP TABLE IF EXISTS students;
CREATE TABLE students (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255),
  group_id INT,
  FOREIGN KEY (group_id) REFERENCES groups (id)
);

DROP TABLE IF EXISTS teachers;
CREATE TABLE teachers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255)
);

DROP TABLE IF EXISTS subjects;
CREATE TABLE subjects (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255),
  teacher_id INT,
  FOREIGN KEY (teacher_id) REFERENCES teachers (id)
);

DROP TABLE IF EXISTS marks;
CREATE TABLE marks (
  student_id INT REFERENCES students (id),
  subject_id INT REFERENCES subjects (id),
  mark INT,
  date DATE
);
