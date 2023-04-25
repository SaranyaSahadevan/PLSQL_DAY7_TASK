/* To create anonymous block with cursor and cursor based record, print out class number, lowest grade in each class 
and students name+surname combined. */

DECLARE 
    CURSOR c_crs_tst IS
        SELECT COURSE_ID, MIN(TEST_GRADE) AS LOWEST_GRADE
        FROM Teacher_1.STUDENT_GRADE
        GROUP BY COURSE_ID;
    v_crs_id   NUMBER;
    v_low_grd  NUMBER;
BEGIN
    OPEN c_crs_tst;
    LOOP
        FETCH c_crs_tst
        INTO v_crs_id, v_low_grd;
        EXIT WHEN c_crs_tst%NOTFOUND;
        
        FOR rec IN (
            SELECT s.FIRST_NAME, s.LAST_NAME
            FROM Teacher_1.STUDENT_GRADE sg 
            JOIN Teacher_1.STUDENT s ON s.STUDENT_ID = sg.STUDENT_ID
            WHERE COURSE_ID = v_crs_id
            AND TEST_GRADE = v_low_grd
            )
        LOOP
            DBMS_OUTPUT.PUT_LINE('Class: ' || v_crs_id || '; Lowest Grade: ' || v_low_grd || '; Student Name: ' || rec.FIRST_NAME || ' ' || rec.LAST_NAME);
        END LOOP;
    END LOOP;
    CLOSE c_crs_tst;
END;