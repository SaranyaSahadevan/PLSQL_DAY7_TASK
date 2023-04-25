/* To create anonymous block that prints out all parents names and surnames as a text using for loop. */


BEGIN
    FOR rec IN (SELECT FIRST_NAME, LAST_NAME FROM Teacher_1.parent)
    LOOP
        DBMS_OUTPUT.PUT_LINE(rec.FIRST_NAME || ' ' || rec.LAST_NAME);
    END LOOP;
END;

