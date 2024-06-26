declare
s number:=0;
n integer;
rem integer;
begin
n:=&n;
while n>0
loop
rem:=mod(n,10);
s:=s+rem;
n:=trunc(n/10);
end loop;
dbms_output.put_line('sum of digit is:'||s);
end;
/
