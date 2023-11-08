// find factorial in plsql
SET SERVEROUTPUT ON;
DECLARE
    n number := 5;
    result number := 1;

begin
    for i in 1..n loop
        result := result * i;
    end loop;
    dbms_output.put_line(result);
end;
/

-- PLSQL TO FIND greastest three number 

SET SERVEROUTPUT ON;
DECLARE
    a number := 10;
    b number := 20;
    c number := 30;
    result number := 0;
begin
    if a > b and a > c then
        result := a;
    elsif b > a and b > c then
        result := b;
    else
        result := c;
    end if;
    dbms_output.put_line('Greatest number is ' || result);
end;

-- plsql to implement a calulator

SET SERVEROUTPUT ON;
DECLARE
    a number := 10;
    b number := 20;
    result number := 0;
    choice number := &b_input;
begin
    if choice = 1 then
        result := a + b;
    elsif choice = 2 then
        result := a - b;
    elsif choice = 3 then
        result := a * b;
    elsif choice = 4 then
        result := a / b;
    else
        dbms_output.put_line('Invalid choice');
    end if;
    dbms_output.put_line('Result is ' || result);
end;
/

-- generate fibonacci series in plsql

SET SERVEROUTPUT ON;
DECLARE
    n number := 10;
    a number := 0;
    b number := 1;
    c number := 0;
begin
    dbms_output.put_line(a);
    dbms_output.put_line(b);
    for i in 1..n loop
        c := a + b;
        dbms_output.put_line(c);
        a := b;
        b := c;
    end loop;
end;
/

-- PLSQL FOR ZERO DEVIDED BY EXCEPTIONS

SET SERVEROUTPUT ON;
DECLARE
    a number := 10;
    b number := 0;
    result number := 0;
begin
    begin
        result := a / b;
    exception
        when zero_divide then
            dbms_output.put_line('Zero divided by exception');
    end;
end;
/

-- PLSQL FOR NO DATA FOUND EXCEPTIONS

SET SERVEROUTPUT ON;
DECLARE
    a number := 10;
    b number := 20;
    result number := 0;
begin
    begin
        select a into result from dual where a = b;
    exception
        when no_data_found then
            dbms_output.put_line('No data found exception');
    end;
end;
/
