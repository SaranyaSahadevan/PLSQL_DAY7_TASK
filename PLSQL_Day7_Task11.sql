/* To create anonymous block that prints out all student average grades. Use cursor and fetch functionality. Format output reasonably. */

DECLARE 
   CURSOR c1 IS 
     SELECT AVG(TEST_GRADE) AS avg_grade, FIRST_NAME, LAST_NAME
     FROM Teacher_1.STUDENT_GRADE sg 
     JOIN Teacher_1.STUDENT s ON sg.STUDENT_ID = s.STUDENT_ID 
     GROUP BY FIRST_NAME, LAST_NAME;
   v_grade NUMBER;
   v_first_name VARCHAR2(50);
   v_last_name VARCHAR2(50);
BEGIN
   OPEN c1;
   LOOP
      FETCH c1 INTO v_grade, v_first_name, v_last_name;
      EXIT WHEN c1%NOTFOUND;
      dbms_output.put_line('Student '||v_first_name||' '||v_last_name||' Average Grade is '||v_grade);
   END LOOP;
   CLOSE c1;
END;