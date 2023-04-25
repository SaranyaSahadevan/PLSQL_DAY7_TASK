/* To Create associative array with neighborghoods of Vilnus and their population (take 10 largest ones). 
Print out formated output from this array. */

DECLARE
    TYPE neighborhood_array IS TABLE OF VARCHAR2(100) INDEX BY BINARY_INTEGER;
    v_neighborhoods neighborhood_array;
BEGIN
    v_neighborhoods(1) := 'Antakalnis - 15811';
    v_neighborhoods(2) := 'Naujamiestis - 14637';
    v_neighborhoods(3) := 'Senamiestis - 14117';
    v_neighborhoods(4) := 'Justinišk?s - 13974';
    v_neighborhoods(5) := 'Žirm?nai - 13154';
    v_neighborhoods(6) := 'Šnipišk?s - 11912';
    v_neighborhoods(7) := 'Fabijonišk?s - 11208';
    v_neighborhoods(8) := 'Pilait? - 10967';
    v_neighborhoods(9) := 'Verkiai - 10822';
    v_neighborhoods(10) := 'Pašilai?iai - 10619';
    
    FOR i IN v_neighborhoods.FIRST..v_neighborhoods.LAST LOOP
        DBMS_OUTPUT.PUT_LINE('Neighborhood: '||v_neighborhoods(i)||' Population: '||REGEXP_SUBSTR(v_neighborhoods(i), '[0-9]+'));
    END LOOP;
END;