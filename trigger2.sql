SQL> create table stock(item varchar(10),stock_avail int);

Table created.

SQL> create table purchase(id int,item varchar(10),no_of_items int,price int);

Table created.

SQL> insert into stock values('pen',100);

1 row created.

SQL> insert into stock values('pencil',200);

1 row created.

SQL> select * from stock;

ITEM	   STOCK_AVAIL
---------- -----------
pen		   100
pencil		   200

SQL> desc purchase;        
 Name					   Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID						    NUMBER(38)
 ITEM						    VARCHAR2(10)
 NO_OF_ITEMS					    NUMBER(38)
 PRICE						    NUMBER(38)

SQL> @triggerr2.sql

Trigger created.

SQL> insert into purchase values(01,'pencil',10,12);
stock updated

1 row created.

SQL> insert into purchase values(02,'eraser',20,5);
stock updated

1 row created.

SQL> insert into purchase values(03,'pen',100,20);
stock updated

1 row created.

SQL> select * from purchase;

	ID ITEM       NO_OF_ITEMS      PRICE
---------- ---------- ----------- ----------
	 1 pencil	       10	  12
	 2 eraser	       20	   5
	 3 pen		      100	  20

SQL> select * from stock;

ITEM	   STOCK_AVAIL
---------- -----------
pen		     0
pencil		   190
