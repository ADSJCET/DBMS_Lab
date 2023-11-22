CREATE OR REPLACE PACKAGE PK4 AS

    PROCEDURE PROC1(
        A IN NUMBER,
        B IN NUMBER,
        SUM OUT NUMBER,
        AVG OUT NUMBER,
        PRODUCT OUT NUMBER
    );

    PROCEDURE PROC2(
        A IN NUMBER,
        SQRT_RESULT OUT NUMBER
    );

    FUNCTION FN11(
        A IN NUMBER
    ) RETURN VARCHAR2;

    FUNCTION FN22(
        A IN NUMBER,
        B IN NUMBER,
        C IN NUMBER
    ) RETURN NUMBER;
END PK4;
/

CREATE OR REPLACE PACKAGE BODY PK4 AS

    PROCEDURE PROC1(
        A IN NUMBER,
        B IN NUMBER,
        SUM OUT NUMBER,
        AVG OUT NUMBER,
        PRODUCT OUT NUMBER
    ) IS
    BEGIN
        SUM := A + B;
        AVG := (A + B) / 2;
        PRODUCT := A * B;
    END PROC1;

    PROCEDURE PROC2(
        A IN NUMBER,
        SQRT_RESULT OUT NUMBER
    ) IS
    BEGIN
        SQRT_RESULT := SQRT(A);
    END PROC2;

    FUNCTION FN11(
        A IN NUMBER
    ) RETURN VARCHAR2 IS
    BEGIN
        IF (MOD(A, 2) = 0) THEN
            RETURN 'even';
        ELSE
            RETURN 'odd';
        END IF;
    END FN11;

    FUNCTION FN22(
        A IN NUMBER,
        B IN NUMBER,
        C IN NUMBER
    ) RETURN NUMBER IS
    BEGIN
        RETURN A + B + C;
    END FN22;
END PK4;
/

DECLARE
    P              NUMBER := &P;
    Q              NUMBER := &Q;
    R              NUMBER := &R;
    S              NUMBER := &S;
    SUM_RESULT     NUMBER;
    AVG_RESULT     NUMBER;
    PRODUCT_RESULT NUMBER;
    SQRT_RESULT    NUMBER;
    FN11_RESULT    VARCHAR2(4);
    FN22_RESULT    NUMBER;
BEGIN
    PK4.PROC1(P, Q, SUM_RESULT, AVG_RESULT, PRODUCT_RESULT);
    PK4.PROC2(R, SQRT_RESULT);
    FN11_RESULT := PK4.FN11(S);
    FN22_RESULT := PK4.FN22(P, Q, S); 
    DBMS_OUTPUT.PUT_LINE('Sum: ' || SUM_RESULT);
    DBMS_OUTPUT.PUT_LINE('Average: ' || AVG_RESULT);
    DBMS_OUTPUT.PUT_LINE('Product: ' || PRODUCT_RESULT);
    DBMS_OUTPUT.PUT_LINE('Square root of ' || R || ' is ' || SQRT_RESULT);
    DBMS_OUTPUT.PUT_LINE(S || ' is ' || FN11_RESULT);
    DBMS_OUTPUT.PUT_LINE('Sum of ' || P || ', ' || Q || ', and ' || S || ' is ' || FN22_RESULT);
END;
/