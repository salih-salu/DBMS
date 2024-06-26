declare
n integer;
rev integer:=0;
rem integer;
temp integer;
begin
n:=&n;
temp:=n;
while n>0
loop
rem:=mod(n,10);
rev:=rev*10+rem;
n:=trunc(n/10);
end loop;
if temp=rev
then
dbms_output.put_line('palindrome');
else
dbms_output.put_line('not palindrome');
end if;
end;
/
