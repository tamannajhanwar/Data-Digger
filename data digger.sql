Create Database data_digger;

USE data_digger;

Create table customer
(cutomerID int primary key,
name varchar(20) not null,
Email varchar(40) mot mul
address varchar(60) now mull);

Insert into customer
values (1, 'Pinku, pinku@gmail.com', 'new york'),
(2, 'sonu, soun@gmail.com','london'), 
(3, 'moksh', 'moksh@gmail.com','london'),
(4, 'Kush', 'Kush@gmail.com','india'),
(5,'tina','tina@gmail.com','japan');

SELECT * FROM customer;

Update customer set address = 'india' where name = 'tina';

Delete from customer where customerID = 3;

insert into customer
values (6, 'Alice', 'alice@gmail.com','london');

Select * from customer where mame = 'alice';

Create table Orders
(orderID int primary key,
CustomerID int not null,
orderDate date not null,
TotalAmount int not null);

insert into orders
values (1,1,'2025-02-17', '100000'),
(2,2, '2025-06-11', '150000'),
(3,4,'2025-04-21','250000'),
(4,5,'2025-01-01','200000'),
(5,6,'2025-03-28', '50000');

Select * from Orders;

Update Orders set TotalAmount = 350000 where OrderID = 5;

Delete from Orders where OrderID = 5;

Update Orders set OrderDate = '2025-07-11' where OrderID = 3;

Select from Orders where OrderDate>='2025-07-01';

Select max(TotalAmount),min(TotalAmount),avg(TotalAmount) from Orders ;

Create table products
(productID int primary key,
ProductName varchar(20) not null, 
price int not null, 
Stock int not null);

insert into Products
Values (1, 'electronics', 1050, 100),
(2,'jewelry', 800, 250), 
(3, 'footwear', 200 ,200), 
(4,'home appliences', 650, 50), 
(5,'sports' ,460, 100);

Select * from products Order by price desc;

Update products set price = 250 where productID = 3;

Select * from products where price>= 500 and price<= 2000;

Select max(price), min(price) from products;

create table OrderDetails 
(orderDetailID int primary key,
orderID int not null,
productID int not null,
quantity int not null,
SubTotal int not null);

insert into OrderDetails
Values (1,1,2,50,40000),
(2,2,4,10,6500),
(3,3,1,20,21000), 
(4,2,3,50,12500),
(5,4,5,20,9200);

Select * from OrderDetails;

Select sum(subTotal) from OrderDetails;
o