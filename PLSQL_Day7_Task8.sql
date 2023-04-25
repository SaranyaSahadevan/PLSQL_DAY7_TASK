/* To create anonymous block with courses table record type, print out all courses
one by one in console. */

DECLARE
   CURSOR course_cursor IS 
      SELECT COURSE_ID, NAME, DESCRIPTION
      FROM Teacher_1.course;
BEGIN
   FOR course_record IN course_cursor 
   LOOP
      DBMS_OUTPUT.PUT_LINE('COURSE_ID: ' || course_record.COURSE_ID || 
                           ' NAME: ' || course_record.NAME ||
                           ' DESCRIPTION: ' || course_record.DESCRIPTION);
   END LOOP;
END;

