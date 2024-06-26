declare
   a integer;
   b integer;
   s integer;
    begin
    a:=&a;
    b:=&b;
    s:=a+b;
    dbms_output.put_line('sum is'||s);
    end;
    /
    
    
    
    
    
    
    
    
    
    Enter value for a: 4
old   6:     a:=&a;
new   6:     a:=4;
Enter value for b: 6
old   7:     b:=&b;
new   7:     b:=6;
sum is10
