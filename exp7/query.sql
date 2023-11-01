create table bank(
	bankname varchar(10),
	headoffice varchar(15),
	branch varchar(15),
	branchcode varchar(11));

INSERT INTO bank VALUES('bob','kolkata','harinagar','bob0035');
INSERT INTO bank VALUES('sbi','kottayam','monippally','sbi0057');

SAVEPOINT v1;

INSERT INTO bank VALUES('kotak','goa','netajinagar','ktk0012');
INSERT INTO bank VALUES('hdfc','kerala','kottayam','hdfc0071');
INSERT INTO bank VALUES('axisbank','kottayam','kuravilangad','axis0045');

SELECT * FROM bank;

ROLLBACK TO v1;

SELECT * FROM bank;

COMMIT;