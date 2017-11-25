/*
	Script from PL/SQL tutorial 73 on Bulk Collect with SELECT-INTO clause in Oracle DATABASE
	Creator: Manish Sharma
	Website: www.RebellionRider.com
		Fastest way to reach Manish Sharma
	Twitter: @RebellionRider
	Facebook:@TheRebellionRider
	Instagram: @RebellionRider
	
	Do make sure to follow me on my social media for more such scripts and other col stuffs. 
	Thanks and have great day.
*/

SET SERVEROUTPUT ON;
DECLARE
    TYPE nt_fName   IS TABLE OF VARCHAR2(20);
    fname   nt_fName;
BEGIN
    SELECT first_name BULK COLLECT INTO fName
    FROM employees;
    
    FOR idx IN 1..fname.COUNT
    LOOP
        DBMS_OUTPUT.PUT_LINE(idx||' - '||fname(idx));
    END LOOP;
END;
/
