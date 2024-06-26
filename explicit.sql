SQL> create table customerr(cust_id varchar(5),name varchar(10),salary int);

Table created.

SQL> insert into customerr values('co1','david',28000);

1 row created.

SQL> insert into customerr values('co2','bob',17000);

1 row created.

SQL> insert into customerr values('c03','lilly',29000);

1 row created.

SQL> insert into customerr values('co4','shwetha',61000);

1 row created.

declare
c_id customerr.cust_id%type;
c_name customerr.name%type;
c_salary customerr.salary%type;
cursor c1 is select cust_id,name,salary from customerr;
begin
open c1;
loop
fetch c1 into c_id,c_name,c_salary;
 exit when c1%notfound;
dbms_output.put_line(c_id||' '||c_name||' '||c_salary);
end loop;
close c1;
end;
/

SQL> @explicit.sql
co1 david 28000
co2 bob 17000
c03 lilly 29000
co4 shwetha 61000

PL/SQL procedure successfully completed.
