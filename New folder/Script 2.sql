SET SERVEROUTPUT ON;
DECLARE
 TYPE nt_fName   IS TABLE OF VARCHAR2(20);
 fname   nt_fName;

BEGIN
    SELECT first_name BULK COLLECT INTO fName 
    FROM employees; 
    
    FOR idx IN 1..fName.count
    LOOP
        DBMS_OUTPUT.PUT_LINE(idx||' - '||fName(idx));
    END LOOP;
END;
/