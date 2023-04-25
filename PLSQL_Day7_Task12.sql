/* To create nested table based on courses. Fill this nested table with values and afterwards print out table's content (courses). */

--Create the nested table
CREATE TYPE Teacher_1_Course_Table AS TABLE OF Teacher_1.Course;

--Create the table
CREATE TABLE Teacher_1_Course_Table_Contents AS
(
  Course_Table Teacher_1_Course_Table
);

--Fill the table
DECLARE
  teacher_1_course_table Teacher_1_Course_Table;
BEGIN
  teacher_1_course_table := Teacher_1_Course_Table(
    Teacher_1.Course(1, 'Algebra', 'Mathematical course'),
    Teacher_1.Course(2, 'Biology', 'Science course'),
    Teacher_1.Course(3, 'Physical education', 'Sports course'),
    Teacher_1.Course(4, 'Chemistry', 'Science course'),
    Teacher_1.Course(5, 'Physics', 'Science course'),
    Teacher_1.Course(6, 'Art', 'Creative course'),
    Teacher_1.Course(7, 'Computer Science', 'Technology course')
  );

  INSERT INTO Teacher_1_Course_Table_Contents
  VALUES (teacher_1_course_table);
END;

--Print out the table's content
SELECT * FROM Teacher_1_Course_Table_Contents;
