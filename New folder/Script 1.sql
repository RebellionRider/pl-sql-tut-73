
/* 
This PL/SQL program will raise an error because we cannot use PL/SQL Collection with SQL statement 
like we are doing in the SELECT-INTO statement. We have used this prgram just to demonstrate how context switch works.
*/
SET SERVEROUTPUT ON;
DECLARE
 TYPE nt_fName   IS TABLE OF VARCHAR2(20);
 fname   nt_fName;

BEGIN
    SELECT first_name INTO fName 
    FROM employees; 
END;
/