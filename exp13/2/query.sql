-- Q2
CREATE TABLE STUDENTS (
    ID INT,
    NAME VARCHAR(30),
    M1 INT,
    M2 INT,
    M3 INT,
    GRADE VARCHAR(10)
);

INSERT INTO STUDENTS( ID, NAME, M1, M2, M3 ) VALUES( 1, 'allen', 40, 60, 50 );
INSERT INTO STUDENTS( ID, NAME, M1, M2, M3 ) VALUES( 2, 'adi', 47, 54, 34 );
INSERT INTO STUDENTS( ID, NAME, M1, M2, M3 ) VALUES( 3, 'binu', 70, 90, 80 );
INSERT INTO STUDENTS( ID, NAME, M1, M2, M3 ) VALUES( 4, 'ciju', 76, 32, 46 );
INSERT INTO STUDENTS( ID, NAME, M1, M2, M3 ) VALUES( 5, 'dinu', 49, 70, 67 );

select * from students;

 --cURSOR
DECLARE
    CURSOR TEMP1 IS
    SELECT ID, NAME, M1, M2, M3 FROM STUDENTS;
    T    TEMP1%ROWTYPE;
    TOT  INT;
    GRAD VARCHAR(10);
BEGIN
    OPEN TEMP1;
    LOOP
        FETCH TEMP1 INTO T;
        EXIT WHEN TEMP1%NOTFOUND;
        TOT := T.M1 + T.M2 + T.M3;
        IF (TOT / 3) > 80 THEN
            GRAD := 'A';
        ELSIF (TOT / 3) > 70 THEN
            GRAD := 'B';
        ELSIF (TOT / 3) > 60 THEN
            GRAD := 'C';
        ELSE
            GRAD := 'D';
        END IF;
        UPDATE STUDENTS SET GRADE = GRAD WHERE ID = T.ID;
    END LOOP;

    CLOSE TEMP1;
END;
/

select * from students;