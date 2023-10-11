
INSERT INTO orders VALUES  (1, 1, 1, '2023-09-30',12);
INSERT INTO orders VALUES  (2, 2, 2, '2023-09-29',10);
INSERT INTO orders VALUES  (3, 3, 5, '2023-09-28',4);
INSERT INTO orders VALUES  (4, 4, 4, '2023-09-27',5);
INSERT INTO orders VALUES  (5, 5, 5, '2023-09-26',6);
INSERT INTO orders VALUES  (6, 6, 5, '2023-09-25',1);
INSERT INTO orders VALUES  (7, 1, 7, '2023-09-24',15);
INSERT INTO orders VALUES  (8, 2, 7, '2023-09-23',12);
INSERT INTO orders VALUES  (9, 3, 5, '2023-09-22',8);
INSERT INTO orders VALUES  (10, 1, 5, '2023-09-21',3);
INSERT INTO orders VALUES  (11, 1, 5, '2023-09-20',15);
INSERT INTO orders VALUES  (12, 3, 5, '2023-09-19',13);
INSERT INTO orders VALUES  (13, 1, 4, '2023-09-18',7);
INSERT INTO orders VALUES  (14, 6, 5, '2023-09-17',9);
INSERT INTO orders VALUES  (15, 1, 5, '2023-09-16',17);
INSERT INTO orders VALUES  (16, 3, 2, '2023-09-15',12);
INSERT INTO orders VALUES  (17, 1, 7, '2023-09-14',10);
INSERT INTO orders VALUES  (18, 4, 5, '2023-09-13',9);
INSERT INTO orders VALUES  (19, 3, 1, '2023-09-12',7);
INSERT INTO orders VALUES  (20, 1, 5, '2023-09-11',1);
select e.employeeid,e.lastname,e.firstname,e.birthdate from (select employeeid as innerEid from orders group by employeeid having count(*) > 10) join employees e on innerEid = e.employeeid;
INSERT INTO customer VALUES (17, 'Rajesh Kumar', 'Rajesh', '1234 Street', 'Delhi', '110001', 'India'),
INSERT INTO customer VALUES (18, 'Suresh Nair', 'Suresh', '5678 Lane', 'Kochi', '682001', 'India'),
INSERT INTO customer VALUES (19, 'Amit Patel', 'Amit', '9101 Avenue', 'Ahmedabad', '380001', 'India'),
INSERT INTO customer VALUES (20, 'Vijay Singh', 'Vijay', '1213 Boulevard', 'Jaipur', '302001', 'India'),
INSERT INTO customer VALUES (21, 'Ravi Verma', 'Ravi', '1415 Drive', 'Lucknow', '226001', 'India
INSERT INTO customer VALUES
INSERT INTO customer VALUES (1, 'Elvin', '1234 Street', 'California');
INSERT INTO customer VALUES (2, 'John Doe', '5678 Lane', 'New York');
INSERT INTO customer VALUES (3, 'Jane Smith', '9101 Avenue', 'Texas');
INSERT INTO customer VALUES (4, 'Robert Johnson', '1213 Boulevard', 'Florida');
INSERT INTO customer VALUES (5, 'Michael Williams', '1415 Drive', 'Illinois');
INSERT INTO customer VALUES (6, 'Sarah Brown', '1617 Parkway', 'Pennsylvania');
INSERT INTO customer VALUES (7, 'David Davis', '1819 Street', 'Ohio');
INSERT INTO customer VALUES (8, 'Emily Miller', '2021 Lane', 'Georgia');
INSERT INTO customer VALUES (9, 'Daniel Wilson', '2223 Avenue', 'North Carolina');
INSERT INTO customer VALUES (10, 'Jessica Moore', '2425 Boulevard', 'Michigan');
INSERT INTO items VALUES
INSERT INTO items VALUES (1, 'Item 1', 'Category 1', 500.00, 0);
INSERT INTO items VALUES (2, 'Item 2', 'Category 2', 1000.00, 5);
INSERT INTO items VALUES (3, 'Item 3', 'Category 3', 1500.00, 10);
INSERT INTO items VALUES (4, 'Item 4', 'Category 4', 2000.00, 15);
INSERT INTO items VALUES (5, 'Item 5', 'Category 5', 2500.00, 20);
INSERT INTO items VALUES (6, 'Item 6', 'Category 6', 3000.00, 25);
INSERT INTO items VALUES (7, 'Item 7', 'Category 7', 3500.00, 30);
INSERT INTO items VALUES (8, 'Item 8', 'Category 8', 4000.00, 35);
INSERT INTO items VALUES (9, 'Item 9', 'Category 9', 4500.00, 40);
INSERT INTO items VALUES (10, 'Item 10', 'Category 10',5000.00,45);
INSERT INTO items VALUES (11, 'Item 11', 'Category 11',5500.00,50);
INSERT INTO items VALUES (12, 'Item 12', 'Category 12',6000.00,55);
INSERT INTO items VALUES (13, 'Item 13', 'Category 13',6500.00,60);
INSERT INTO items VALUES (14, 'Item 14', 'Category 14',7000.00,65);
INSERT INTO items VALUES (15, 'Item 15', 'Category 15',7500.00,70);
