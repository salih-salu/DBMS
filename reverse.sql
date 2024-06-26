declare
rev integer:=0;
rem integer;
n integer;
begin
n:=&n;
while n>0
loop
rem:=mod(n,10);
rev:=rev*10+rem;
n:=trunc(n/10);
end loop;
dbms_output.put_line('the reverse is'||rev);
end;
/
