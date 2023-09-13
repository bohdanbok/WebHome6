from faker import Faker
import sqlite3


def create_db():
    with open('students.sql', 'r') as f:
        sql = f.read()

    with sqlite3.connect('students.db') as con:
        cur = con.cursor()
        cur.executescript(sql)


def fill_db():
    faker = Faker()

    with sqlite3.connect('students.db') as con:
        cur = con.cursor()
        # Заполняем таблицу студентов
        for i in range(30):
          name = faker.name()
          group_id = faker.random_int(min=1, max=3)
          cur.execute("""
            INSERT INTO students (name, group_id)
            VALUES (?, ?);
          """, (name, group_id))

        # Заполняем таблицу групп
        for i in range(3):
          name = faker.company()
          cur.execute("""
            INSERT INTO groups (name)
            VALUES (?);
          """, (name,))

        # Заполняем таблицу преподавателей
        for i in range(3):
          name = faker.name()
          cur.execute("""
            INSERT INTO teachers (name)
            VALUES (?);
          """, (name,))

        # Заполняем таблицу предметов
        for i in range(5):
          name = faker.job()
          teacher_id = faker.random_int(min=1, max=3)
          cur.execute("""
            INSERT INTO subjects (name, teacher_id)
            VALUES (?, ?);
          """, (name, teacher_id))

        # Заполняем таблицу оценок
        for i in range(50):
          student_id = faker.random_int(min=1, max=30)
          subject_id = faker.random_int(min=1, max=5)
          mark = faker.random_int(min=1, max=10)
          date = faker.date_of_birth()
          cur.execute("""
            INSERT INTO marks (student_id, subject_id, mark, date)
            VALUES (?, ?, ?, ?);
          """, (student_id, subject_id, mark, date))


if __name__ == "__main__":
    create_db()
    fill_db()
