SET SERVEROUTPUT ON;
DECLARE 
   CURSOR customer_cur is 
      SELECT id, name, sname, salary  
      FROM customers; 
   c_rec customer_cur%rowtype; 
BEGIN 
   OPEN customer_cur; 
   LOOP 
      FETCH customer_cur into c_rec; 
      EXIT WHEN customer_cur%notfound; 
      DBMS_OUTPUT.put_line(c_rec.id || ' ' || c_rec.name||' '||c_rec.sname||
			      ' earns '||c_rec.salary||' $'); 
   END LOOP; 
   CLOSE customer_cur; 
END; 
/
