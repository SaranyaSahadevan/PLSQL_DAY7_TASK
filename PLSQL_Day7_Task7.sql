/* To create anonymous block that would print for each student - name, surname, max, min and average
grade across all courses. */

BEGIN 
FOR student IN (SELECT FIRST_NAME, LAST_NAME, MIN(TEST_GRADE) MIN_GRADE, MAX(TEST_GRADE) MAX_GRADE, AVG(TEST_GRADE) AVG_GRADE
FROM Teacher_1.student s
INNER JOIN Teacher_1.student_grade g
ON s.STUDENT_ID = g.STUDENT_ID
GROUP BY FIRST_NAME, LAST_NAME)
LOOP
    DBMS_OUTPUT.PUT_LINE('Name: ' ||student.FIRST_NAME || ' ' ||student.LAST_NAME || ', Max Grade: ' ||student.MAX_GRADE || ', Min Grade: ' ||student.MIN_GRADE || ', Average Grade: ' ||student.AVG_GRADE);
END LOOP;
END;