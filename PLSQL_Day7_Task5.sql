/* To create anonymous block that would print out all parents and for each parent print out all kids, print
their names in the console and indent students for readability. */

BEGIN

FOR rec IN (SELECT 
    p.FIRST_NAME as p_fname,
    p.LAST_NAME as p_lname,
    s.FIRST_NAME as s_fname,
    s.LAST_NAME as s_lname
FROM 
    Teacher_1.parent p
    LEFT JOIN Teacher_1.student s ON p.PARENT_ID = s.PARENT_ID
ORDER BY p.FIRST_NAME, p.LAST_NAME, s.FIRST_NAME, s.LAST_NAME)
LOOP
    DBMS_OUTPUT.PUT_LINE(rec.p_fname ||' '|| rec.p_lname);
    DBMS_OUTPUT.PUT_LINE('  '||rec.s_fname ||' '|| rec.s_lname);
END LOOP;

END;