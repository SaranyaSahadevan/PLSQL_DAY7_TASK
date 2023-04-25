/* To create anonymous block that divides 128 by 2 till number reaches 1 using while loop, print out all
steps in between. */

BEGIN 
   DECLARE 
      n NUMBER := 128; 
   BEGIN 
      WHILE n > 1 LOOP 
         DBMS_OUTPUT.PUT_LINE(n || ' divided by 2 is ' || n / 2); 
         n := n / 2; 
      END LOOP; 
   END; 
END;