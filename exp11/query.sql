-- CREATE A FUNCTION TO ADD TWO NUMBERS IN ORACLE

CREATE OR REPLACE FUNCTION ADD_TWO_NUMBERS (A NUMBER, B NUMBER) 
RETURN NUMBER IS
BEGIN
    RETURN A + B;
END;
/



-- CREATE A FUNCTION TO ADD TWO NUMBERS IN ORACLE WITH STORE RESULT IN VARIABLE

CREATE OR REPLACE FUNCTION ADD_TWO_NUMBERS (A NUMBER, B NUMBER) 
RETURN NUMBER IS
    RESULT NUMBER;
BEGIN
    RESULT := A + B;
    RETURN RESULT;
END;
/

-- SAMPLE CALL TO FUNCTION

SELECT ADD_TWO_NUMBERS(10, 20) FROM DUAL;

-- USING PLSQL BLOCK

DECLARE
    RESULT NUMBER;
BEGIN
    RESULT := ADD_TWO_NUMBERS(10, 20);
    DBMS_OUTPUT.PUT_LINE('RESULT: ' || RESULT);
END;
/

-- WRITE FUNCTION FOR FACTORIAL

CREATE OR REPLACE FUNCTION FACTORIAL (N NUMBER)
RETURN NUMBER IS
    RESULT NUMBER := 1;
BEGIN
    FOR I IN 1..N LOOP
        RESULT := RESULT * I;
    END LOOP;
    RETURN RESULT;
END;
/

-- CALL FACTORIAL FUNCTION IN PLSQL BLOCK

DECLARE
    RESULT NUMBER;
BEGIN
    RESULT := FACTORIAL(5);
    DBMS_OUTPUT.PUT_LINE('RESULT: ' || RESULT);
END;    
/



-- Q2
-- create a table student (id, name, m1, m2, m3, total, grade) create a procedure pr1 to update all rows in db. boost the marks of all students by 5%

CREATE TABLE STUDENT (
    ID NUMBER,
    NAME VARCHAR2(20),
    M1 NUMBER,
    M2 NUMBER,
    M3 NUMBER,
    TOTAL NUMBER,
    GRADE VARCHAR2(2)
);

INSERT INTO STUDENT VALUES (1, 'John', 10, 20, 30, 0, '');
INSERT INTO STUDENT VALUES (2, 'Emma', 20, 30, 40, 0, '');
INSERT INTO STUDENT VALUES (3, 'Oliver', 30, 40, 50, 0, '');
INSERT INTO STUDENT VALUES (4, 'Ava', 40, 50, 60, 0, '');
INSERT INTO STUDENT VALUES (5, 'Sophia', 50, 60, 70, 0, '');

COMMIT;

SELECT * FROM STUDENT;

CREATE OR REPLACE PROCEDURE PR1 IS
BEGIN
    UPDATE STUDENT SET M1 = M1 + (M1 * 0.05);
    UPDATE STUDENT SET M2 = M2 + (M2 * 0.05);
    UPDATE STUDENT SET M3 = M3 + (M3 * 0.05);
    COMMIT;
END;

EXEC PR1;

SELECT * FROM STUDENT;


-- Q3
-- CREATE FUNCTION TO FIND GRADES, AND PROCEDURE TO UPDATE TOTAL & GRADES

CREATE OR REPLACE FUNCTION FIND_GRADE (MARKS NUMBER)
RETURN VARCHAR2 IS
    GRADE VARCHAR2(2);
BEGIN
    IF MARKS >= 90 THEN
        GRADE := 'A+';
    ELSIF MARKS >= 80 THEN
        GRADE := 'A';
    ELSIF MARKS >= 70 THEN
        GRADE := 'B+';
    ELSIF MARKS >= 60 THEN
        GRADE := 'B';
    ELSIF MARKS >= 50 THEN
        GRADE := 'C+';
    ELSIF MARKS >= 40 THEN
        GRADE := 'C';
    ELSE
        GRADE := 'F';
    END IF;
    RETURN GRADE;
END;
/

CREATE OR REPLACE PROCEDURE UPDATE_TOTAL_GRADE IS
BEGIN
    UPDATE STUD
  ENT SET TOTAL = M1 + M2 + M3;  UPDATE STUDENT SET GRADE = FIND_GRADE(TOTAL);
    COMMIT;
END;
/

EXEC UPDATE_TOTAL_GRADE;

SELECT * FROM STUDENT;