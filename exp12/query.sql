CREATE TABLE customer_details(
    id NUMBER PRIMARY KEY,
    name VARCHAR2(30) NOT NULL,
    address VARCHAR2(50) NOT NULL
);

CREATE TABLE emp_details (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(30) NOT NULL,
    salary NUMBER NOT NULL
);

CREATE TABLE cust_count ( count_row NUMBER default 0 );

INSERT INTO cust_count VALUES (0);

insert into customer_details values (1, 'John', 'USA');
insert into customer_details values (2, 'Smith', 'UK');
insert into customer_details values (3, 'Ravi', 'India');
insert into customer_details values (4, 'Raj', 'India');
insert into customer_details values (5, 'Rahul', 'India');

insert into emp_details values (1, 'Michael', 6000);
insert into emp_details values (2, 'Sarah', 7000);
insert into emp_details values (3, 'Jessica', 8000);
insert into emp_details values (4, 'Mohammed', 9000);
insert into emp_details values (5, 'Ahmed', 10000);

-- create trigger whenever a new record is inserted in customer_details table, just display a message

CREATE OR REPLACE TRIGGER trig1
AFTER INSERT ON customer_details
FOR EACH ROW
DECLARE
BEGIN
    DBMS_OUTPUT.PUT_LINE('New record inserted in customer_details table');
END;
/


-- create a trigger to display a message when enters a value > 20000 in salary column of emp_details table

CREATE OR REPLACE TRIGGER trig2
BEFORE INSERT ON emp_details
FOR EACH ROW
DECLARE
BEGIN
    IF :NEW.salary > 20000 THEN
        RAISE_APPLICATION_ERROR(-20000, 'Salary should not be greater than 20000');
    END IF;
END;
/

-- 

CREATE OR REPLACE TRIGGER trig3 AFTER INSERT OR DELETE ON customer_details
FOR EACH ROW
DECLARE
    counter NUMBER;
BEGIN
    SELECT COUNT(*) INTO counter FROM customer_details;
    UPDATE cust_count SET count_row = counter;
END;
/

CREATE or REPLACE TRIGGER trig3 AFTER INSERT OR DELETE ON customer_details
FOR EACH ROW
    BEGIN 
        IF INSERTING THEN
            UPDATE cust_count SET count_row = count_row + 1;
        ELSIF DELETING THEN
            UPDATE cust_count SET count_row = count_row - 1;
    END IF;
END;
/

CREATE TABLE ARCHIVE_CUSTOMER_DETAILS(
    id NUMBER PRIMARY KEY,
    name VARCHAR2(30) NOT NULL,
    address VARCHAR2(50) NOT NULL
);

CREATE OR REPLACE TRIGGER trig4 
BEFORE DELETE ON emp_details FOR EACH ROW
DECLARE
    emp_name VARCHAR2(30);
    emp_salary NUMBER;
    emp_id NUMBER;
BEGIN
    emp_name := :OLD.name;
    emp_salary := :OLD.salary;
    emp_id := :OLD.id;
    INSERT INTO ARCHIVE_EMP_DETAILS VALUES (emp_id, emp_name, emp_salary);
    DBMS_OUTPUT.PUT_LINE('Employee ' || emp_name || ' with salary ' || emp_salary || ' is deleted');
END;
/

