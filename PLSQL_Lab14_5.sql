CREATE OR REPLACE FUNCTION totalCustomers 
RETURN number 
IS 
   total number(2) := 0; 
BEGIN 
   SELECT count(*) into total 
   FROM customers; 
    
   RETURN total; 
END; 
/ 

--Calling the function
SET SERVEROUTPUT ON;
DECLARE 
   c number(2); 
BEGIN 
   c := totalCustomers(); 
   dbms_output.put_line('Total no. of Customers: ' || c); 
END; 
/
