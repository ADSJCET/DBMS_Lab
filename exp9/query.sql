CREATE TABLE bank(
	code VARCHAR(3) PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
	headoffice VARCHAR(15),
	branches INT
);

CREATE TABLE branch(
	id CHAR(20) PRIMARY KEY,
	name VARCHAR(20) DEFAULT 'New Delhi',
	bankid VARCHAR(3),
	FOREIGN KEY (bankid) REFERENCES bank(code) ON DELETE CASCADE
);

INSERT INTO bank VALUES('FDL','Federal Bank','Ernakulam',650);
INSERT INTO bank VALUES('SBT','State Bank','Trivandrum',230);
INSERT INTO bank VALUES('SIB','South Indian Bank','Ernakulam',941);
INSERT INTO bank VALUES('CSB','Catholic Syrian Bank','Thrissur',941);

SELECT * FROM bank;

INSERT INTO branch VALUES('SBTR0000134','Monippally','SBT');
INSERT INTO branch VALUES('FDRL0001025','Kottayam','FDL');
INSERT INTO branch VALUES('SIBL0000037','Kottayam','SIB');
INSERT INTO branch VALUES('CSBK0000153','Palai','CSB');

SELECT * FROM branch;

COMMIT;

DELETE FROM bank WHERE code = 'SBT';
SELECT * FROM bank;
SELECT * FROM branch;

COMMIT;

ALTER TABLE branch DROP PRIMARY KEY;
DESC branch;

CREATE VIEW bank_head AS 
	SELECT * FROM bank WHERE headoffice = 'Ernakulam';
SELECT * FROM bank_head;

CREATE VIEW bank_branch AS 
	SELECT * FROM branch WHERE name = 'Kottayam';
SELECT * FROM bank_branch;

COMMIT;