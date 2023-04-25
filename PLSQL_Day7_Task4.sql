/* To create anonymous block that prints out first 10 rows from students table (all columns) and the names
of these printed columns (just once) as a header in the console output. */

DECLARE 
   CURSOR c1 IS 
   SELECT STUDENT_ID, FIRST_NAME, LAST_NAME, DATE_OF_BIRTH, SOCIAL_SECURITY_NO, EMAIL, PHONE_NO, DATE_OF_JOINING, STATUS, STUDY_CLASS, PARENT_ID
   FROM Teacher_1.student;
BEGIN
   DBMS_OUTPUT.PUT_LINE('STUDENT_ID' || ' ' || 'FIRST_NAME' || ' ' || 'LAST_NAME' || ' ' || 'DATE_OF_BIRTH' || ' ' || 'SOCIAL_SECURITY_NO' || ' ' || 'EMAIL' || ' ' || 'PHONE_NO' || ' ' || 'DATE_OF_JOINING' || ' ' || 'STATUS' || ' ' || 'STUDY_CLASS' || ' ' || 'PARENT_ID');
   FOR i IN c1 LOOP
      DBMS_OUTPUT.PUT_LINE(i.STUDENT_ID || ' ' || i.FIRST_NAME || ' ' || i.LAST_NAME || ' ' || i.DATE_OF_BIRTH || ' ' || i.SOCIAL_SECURITY_NO || ' ' || i.EMAIL || ' ' || i.PHONE_NO || ' ' || i.DATE_OF_JOINING || ' ' || i.STATUS || ' ' || i.STUDY_CLASS || ' ' || i.PARENT_ID);
   END LOOP;
END;