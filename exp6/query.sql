
ALTER TABLE customer RENAME COLUMN city TO state;

alter table customer drop (POSTAL,  COUNTRY, CONTACTNAME);

create table customers ( id int primary key, name varchar(20), address varchar(40), state varchar(20));


create table items (id int PRIMARY KEY, name varchar(50), category varchar(20), price int, instock int);


create table orders (id int primary key, iid int, cid int, FOREIGN KEY (iid) REFERENCES items(id), FOREIGN KEY (cid) REFERENCES customers(id), quantity int, dates varchar(20));


create table delivery ( id int primary key, cid int, oid int, FOREIGN KEY (cid) REFERENCES customers(id), FOREIGN KEY (oid) REFERENCES order(id) );




INSERT INTO customer values (1, 'Amit Sharma', '123 Gandhi Road', 'Mumbai',);
INSERT INTO customer values   (2, 'Priya Patel', '456 Taj Mahal Street', 'Delhi',);
INSERT INTO customer values   (3, 'Elvin', '789 Lotus Lane', 'Bangalore',);
INSERT INTO customer values   (4, 'Anita Kapoor',  '234 Spice Market', 'Chennai',);
INSERT INTO customer values   (5, 'Vikram Verma', '567 Tandoori Avenue', 'Hyderabad',);
INSERT INTO customer values   (6, 'Meera Nair', '890 Bollywood Road', 'Kolkata',);
INSERT INTO customer values   (7, 'Sanjay Reddy', '101 Coconut Lane', 'Kochi',);
INSERT INTO customer values (8, 'Sunny', 'Wei',eijing Road', 'Beijing',);
INSERT INTO customer values   (9, 'Xiaoming Chen', '456 Great Wall Street', 'Shanghai',);
INSERT INTO customer values   (10, 'Sasi', '789 Forbidden City Lane', 'Xian',);




INSERT INTO items VALUES (1, 'Apple', 'Fruit', 6, 100);
INSERT INTO items VALUES (2, 'Banana', 'Fruit', 25, 50);
INSERT INTO items VALUES (3, 'Orange', 'Fruit', 75, 75);
INSERT INTO items VALUES (4, 'Milk', 'Dairy', 25, 20);
INSERT INTO items VALUES (5, 'Cheese', 'Dairy', 30, 10);
INSERT INTO items VALUES (6, 'Samsung Galaxy S4', 'Tech', 5000, 10);


INSERT INTO orders VALUES (1, 1, 1, 10, '2023-10-11');
INSERT INTO orders VALUES (2, 2, 2, 5, '2023-10-11');
INSERT INTO orders VALUES (3, 3, 3, 7, '2023-10-11');
INSERT INTO orders VALUES (4, 4, 4, 2, '2023-10-11');
INSERT INTO orders VALUES (5, 5, 5, 1, '2023-10-11');
INSERT INTO orders VALUES (6, 6, 6, 8, '2023-10-11');
INSERT INTO orders VALUES (7, 7, 7, 4, '2023-10-11');
INSERT INTO orders VALUES (8, 8, 8, 6, '2023-10-11');
INSERT INTO orders VALUES (9, 9, 9, 3, '2023-10-11');
INSERT INTO orders VALUES (10, 10, 10, 12,'2023-10-11');

INSERT INTO delivery (id, cid, oid) VALUES (1, 1, 1);
INSERT INTO delivery (id, cid, oid) VALUES (2, 2, 2);
INSERT INTO delivery (id, cid, oid) VALUES (3, 3, 3);
INSERT INTO delivery (id, cid, oid) VALUES (4, 4, 4);
INSERT INTO delivery (id, cid, oid) VALUES (5, 5, 5);
INSERT INTO delivery (id, cid, oid) VALUES (6, 6, 6);
INSERT INTO delivery (id, cid, oid) VALUES (7, 7, 7);
INSERT INTO delivery (id, cid, oid) VALUES (8, 8, 8);
INSERT INTO delivery (id, cid, oid) VALUES (9, 9, 9);
INSERT INTO delivery (id, cid, oid) VALUES (10, 10, 10);
INSERT INTO delivery (id, cid, oid) VALUES (11, 11, 11);
INSERT INTO delivery (id, cid, oid) VALUES (12, 12, 12);
INSERT INTO delivery (id, cid, oid) VALUES (13, 13, 13);
INSERT INTO delivery (id, cid, oid) VALUES (14, 14 ,14);
INSERT INTO delivery (id,cid ,oid )VALUES(15 ,15 ,15 );
INSERT INTO delivery(id,cid ,oid )VALUES(16 ,16 ,16 );
INSERT INTO delivery(id,cid ,oid )VALUES(17 ,17 ,17 );
INSERT INTO delivery(id,cid ,oid )VALUES(18 ,18 ,18 );
INSERT INTO delivery(id,cid ,oid )VALUES(19 ,19 ,19 );
INSERT INTO delivery(id,cid ,oid )VALUES(20 ,20 ,20 );
