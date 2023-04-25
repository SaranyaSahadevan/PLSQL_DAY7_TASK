/* To previously created solution add logic that would print out - Elementary school, Middle School, Highschool to each kid. */

DECLARE
    v_parent_id          NUMBER;
    v_parent_first_name  VARCHAR2(80);
    v_parent_last_name   VARCHAR2(80);
    v_student_first_name VARCHAR2(80);
    v_student_last_name  VARCHAR2(80);
    v_study_class        NUMBER;
BEGIN
    FOR r_parent IN (
        SELECT
            p.parent_id,
            p.first_name,
            p.last_name
        FROM
            teacher_1.parent p
    ) LOOP
        v_parent_id := r_parent.parent_id;
        v_parent_first_name := r_parent.first_name;
        v_parent_last_name := r_parent.last_name;
        dbms_output.put_line(v_parent_id
                             || '  '
                             || v_parent_first_name
                             || '  '
                             || v_parent_last_name);

        FOR r_student IN (
            SELECT
                s.first_name,
                s.last_name,
                s.study_class
            FROM
                teacher_1.student s
            WHERE
                s.parent_id = v_parent_id
        ) LOOP
            v_student_first_name := r_student.first_name;
            v_student_last_name := r_student.last_name;
            v_study_class := r_student.study_class;
            dbms_output.put_line('    '
                                 || v_student_first_name
                                 || '  '
                                 || v_student_last_name);
            IF ( v_study_class BETWEEN 1 AND 4 ) THEN
                dbms_output.put_line('        Elementary school');
            ELSIF ( v_study_class BETWEEN 5 AND 7 ) THEN
                dbms_output.put_line('        Middle School');
            ELSIF ( v_study_class BETWEEN 8 AND 10 ) THEN
                dbms_output.put_line('        Highschool');
            END IF;

        END LOOP;

    END LOOP;
END;