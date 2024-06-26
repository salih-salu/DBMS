declare
l integer;
b integer;
h integer;
area integer;
begin 
l:=&l;
b:=&b;
h:=&h;
area:=l*b*h;
dbms_output.put_line('area of cuboid: '||area);
end;
/



Enter value for l: 3
old   7: l:=&l;
new   7: l:=3;
Enter value for b: 4 
old   8: b:=&b;
new   8: b:=4;
Enter value for h: 5
old   9: h:=&h;
new   9: h:=5;
area of cuboid: 60
