cec@user:~$ sudo su
[sudo] password for cec: 
root@user:/home/cec# sqlplus sys as sysdba

SQL*Plus: Release 11.2.0.2.0 Production on Mon Apr 22 14:38:16 2024

Copyright (c) 1982, 2011, Oracle.  All rights reserved.

Enter password: 

Connected to:
Oracle Database 11g Express Edition Release 11.2.0.2.0 - 64bit Production


SQL> create user u2 identified by abc123;

User created.
SQL> grant connect,resource to u2;

Grant succeeded.

SQL> exit;
Disconnected from Oracle Database 11g Express Edition Release 11.2.0.2.0 - 64bit Production
root@user:/home/cec# sqlplus u2 as sysdba;

SQL*Plus: Release 11.2.0.2.0 Production on Mon Apr 22 14:40:20 2024

Copyright (c) 1982, 2011, Oracle.  All rights reserved.

Enter user-name: u2
Enter password: 

Connected to:
Oracle Database 11g Express Edition Release 11.2.0.2.0 - 64bit Production

SQL> create table customer(id integer,name varchar(10),salary integer);                            

Table created.


SQL> set serveroutput on

  create or replace trigger t1 before insert or delete or update on customer for each row
when(new.id>0)
declare
 sal_diff number;
 begin
 sal_diff:=:new.salary-:old.salary;
 dbms_output.put_line('old salary'||:old.salary);
 dbms_output.put_line('new salary'||:new.salary);
 dbms_output.put_line('salary diff'||sal_diff);
end;
/

  
SQL> @triggerr.sql

Trigger created.


SQL> insert into customer values(01,'joe',5000);         
old salary
new salary5000
salary diff

1 row created.

SQL> insert into customer values(02,'dia',2300);
old salary
new salary2300
salary diff

1 row created.

SQL> insert into customer values(03,'lilly',9000);
old salary
new salary9000
salary diff

1 row created.

SQL> update customer set salary=45000 where id=02;
old salary2300
new salary45000
salary diff42700

1 row updated.
