CREATE TABLE items(
	itemid CHAR(6) PRIMARY KEY,
	itemname VARCHAR(50),
	category VARCHAR(20),
	price INT,
	instock INT);

INSERT INTO items VALUES('000001','Samsung GalaxyS4','Electronics',50000,10);
INSERT INTO items VALUES('000002','iPhone 12','Electronics',70000,5);
INSERT INTO items VALUES('000003','HP Laptop','Electronics',60000,8);
INSERT INTO items VALUES('000004','Canon DSLR','Electronics',80000,6);

SELECT * FROM items;

CREATE TABLE customers(
	custid CHAR(6) PRIMARY KEY,
	custname VARCHAR(20),
	address VARCHAR(20),
	state VARCHAR(10));

INSERT INTO customers VALUES('A1B2C3','Sara','Main St','Mumbai');
INSERT INTO customers VALUES('D4E5F6','Elvin','Maple Ave','Mumbai');
INSERT INTO customers VALUES('G7H8I9','Liam','Oak St','Delhi');
INSERT INTO customers VALUES('J0K1L2','Emma','Pine Ave','Delhi');

SELECT * FROM customers;

CREATE TABLE orders(
	orderid CHAR(6) PRIMARY KEY,
	itemid CHAR(6),
	custid CHAR(6),
	quantity INT,
	orderdate DATE,
	FOREIGN KEY (itemid) REFERENCES items(itemid),
	FOREIGN KEY (custid) REFERENCES customers(custid));

INSERT INTO orders VALUES('100001','000001','A1B2C3',2,'01-JAN-2023');
INSERT INTO orders VALUES('100002','000002','D4E5F6',1,'21-MAR-2023');
INSERT INTO orders VALUES('100003','000003','G7H8I9',1,'13-MAR-2023');
INSERT INTO orders VALUES('100004','000004','J0K1L2',1,'27-APR-2023');
INSERT INTO orders VALUES('100005','000002','A1B2C3',1,'08-APR-2023');
INSERT INTO orders VALUES('100006','000001','D4E5F6',2,'29-APR-2023');

SELECT * FROM orders;

CREATE TABLE delivery(
	deliveryid CHAR(6) PRIMARY KEY,
	custid CHAR(6),
	orderid CHAR(6),
	FOREIGN KEY (custid) REFERENCES customers(custid),
	FOREIGN KEY (orderid) REFERENCES orders(orderid));

INSERT INTO delivery VALUES('100100','A1B2C3','100001');
INSERT INTO delivery VALUES('100200','D4E5F6','100002');
INSERT INTO delivery VALUES('100300','G7H8I9','100003');
INSERT INTO delivery VALUES('100400','J0K1L2','100004');

SELECT * FROM delivery;



SELECT * FROM customers WHERE custid IN(SELECT custid FROM orders);


SELECT * FROM customers WHERE custid IN(SELECT custid FROM delivery);


SELECT orderdate FROM orders WHERE custid IN(SELECT custid FROM customers WHERE SUBSTR(custname,1,1) = 'S');


SELECT itemname, price FROM items WHERE itemid IN(
	SELECT o.itemid FROM orders o
		LEFT JOIN customers c ON o.custid = c.custid
		WHERE c.custname = 'Elvin');


SELECT * FROM customers WHERE custid IN(
	SELECT custid FROM orders WHERE orderid NOT IN(
		SELECT orderid FROM delivery)
		AND orderdate > '31-JAN-2013');


SELECT itemid FROM orders UNION(
	SELECT itemid FROM orders WHERE orderid NOT IN(
		SELECT orderid FROM delivery));

