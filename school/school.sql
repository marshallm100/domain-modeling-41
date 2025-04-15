-- Drops existing tables, so we start fresh with each
-- run of this script
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS teachers;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS sections;
DROP TABLE IF EXISTS enrollments;

CREATE TABLE students (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT
);

-- Create the rest of the tables

INSERT INTO students ( 
  first_name,
  last_name,
  email,
  phone_number
) values (
  "Jane", 
  "Doe",
  "jane@example.com",
  "555-1212"
);
INSERT INTO students ( 
  first_name,
  last_name,
  email,
  phone_number
) values (
  "Jenny", 
  "Smith",
  "jenny@gmail.com",
  "867-5309"
);
INSERT INTO students ( 
  first_name,
  last_name,
  email,
  phone_number
) values (
  "john", 
  "johnson",
  "john@acme.com",
  "456-7890"
);
CREATE TABLE teachers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  bio
);
INSERT INTO teachers ( 
  first_name,
  last_name,
  bio
) values (
  "Ben", 
  "Block",
  "A seasoned pro instructor"
);
INSERT INTO teachers ( 
  first_name,
  last_name,
  bio
) values (
  "Brian", 
  "Eng",
  "Loves tacos"
);

CREATE TABLE courses (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT, 
  description TEXT
);

INSERT INTO courses ( 
  name,
  description
) values (
  "Intro to SW Development", 
  "This course is focused on sw dev"
);

INSERT INTO courses ( 
  name,
  description 
) values (
  "Taco Making 101", 
  "In this course you'll learn how to build a proper taco"
);
CREATE TABLE sections (
  id INTEGER PRIMARY KEY, 
  time TEXT, 
  course_id TEXT, 
  teacher_id TEXT
);
Select * from sections INNER JOIN courses ON courses.id = sections.course_id INNER JOIN teachers ON teachers.id = sections.teacher_id; 

INSERT INTO sections ( 
  time,
  course_id,
  teacher_id
) values (
  "Tuesday 8:30", 
  "1", 
  "2"
);
INSERT INTO sections ( 
  time,
  course_id,
  teacher_id
) values (
  "Wednesday 6pm", 
  "1", 
  "1"
);
INSERT INTO sections ( 
  time,
  course_id,
  teacher_id
) values (
  "Wednesday 6pm", 
  "2", 
  "2"
);
INSERT INTO sections ( 
  time,
  course_id,
  teacher_id 
) values (
  "Thursday 6pm", 
  "2", 
  "1"
);

CREATE TABLE enrollments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  course_id TEXT,
  student_id TEXT
);
Select * from enrollments INNER JOIN courses ON courses.id = enrollments.course_id INNER JOIN students ON enrollments.student_id = students.id;
