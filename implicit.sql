create table customerr(cust_id varchar(5),name varchar(10),salary int);

Table created.

SQL> insert into customerr values('co1','david',23000);

1 row created.
SQL> insert into customerr values('co2','bob',12000);

1 row created.

SQL> insert into customerr values('c03','lilly',24000);

1 row created.

SQL> insert into customerr values('co4','shwetha',56000);

1 row created.

SQL> select * from customerr;

CUST_ NAME	     SALARY
----- ---------- ----------
co1   david	      23000
co2   bob	      12000
c03   lilly	      24000
co4   shwetha	      56000

declare
total_rows number(2);
begin
update customerr set salary=salary+5000;
if sql%notfound then
dbms_output.put_line('No customers selected');
elsif sql%found then
total_rows:=sql%rowcount;
dbms_output.put_line(total_rows||'customers selected');
end if;
end;
/

SQL> @implicit.sql
4customers selected

PL/SQL procedure successfully completed.

SQL> select*from customerr;

CUST_ NAME	     SALARY
----- ---------- ----------
co1   david	      28000
co2   bob	      17000
c03   lilly	      29000
co4   shwetha	      61000
