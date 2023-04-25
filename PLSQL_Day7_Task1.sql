/* To create anonymous block that prints out all teachers work email address using loop and fetch. */

SET SERVEROUTPUT ON

DECLARE
    CURSOR c1 IS
    SELECT
        work_email
    FROM
        teacher_1.teacher;

    v_work_email teacher_1.teacher.work_email%TYPE;
BEGIN
    OPEN c1;
    LOOP
        FETCH c1 INTO v_work_email;
        EXIT WHEN c1%notfound;
        dbms_output.put_line('Work Email: ' || v_work_email);
    END LOOP;

    CLOSE c1;
END;