--Code 1: without bulk collect
SET SERVEROUTPUT ON;
DECLARE
    CURSOR tut_73 IS
    SELECT * FROM employees;
    var1 employees%ROWTYPE;
BEGIN
    OPEN tut_73;
    LOOP
        FETCH tut_73 INTO var1;
        EXIT WHEN tut_73%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(var1.first_name);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('total number of rows fetched are: '||tut_73%ROWCOUNT);
    CLOSE tut_73;
END;
/