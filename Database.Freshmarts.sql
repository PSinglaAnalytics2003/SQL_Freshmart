create database Freshmarts

----CUSTOMER TABLE
Create table Customer
(
Customer_ID int IDENTITY(1,1) primary key,
FirstName varchar(50),
LastName varchar(50),
Age int,
Gender varchar(20),
Email nvarchar(50),
Phone char(10)
)

select * from Customer

----ORDER TABLE
Create table Orderss
(
Order_ID int Identity(201,1) primary key,
Customer_ID int Foreign Key references Customer(Customer_ID),
Order_date date,
amount_paid decimal(10,2),
Status varchar (20)
)

select * from Orderss


----CATEGORY TABLE
create table categories
(
category_id int identity(301,1) primary key,
category_name varchar (50)
)

select * from categories

----PRODUCT TABLE
create table products
(
Product_id int identity(401,1) primary key, 
Product_name varchar (50) not null,
Price decimal (10,2) not null,
category_id int Foreign Key references categories(category_id)
)

select * from products

----ORDERDETAILS TABLE
Create table OrderDetails
(OrderDetail_id int identity(501,1) primary key,
Order_id int foreign key references Orderss(order_id),
Product_id int foreign key references products(product_id),
Quantity int,
Subtotal decimal (10,2)
)
select * from OrderDetails


----PAYMENT TABLE
create table payment
(
payment_id int identity(601,1) primary key,
payment_date date,
payment_method varchar (50),
Order_id int foreign key references Orderss(Order_id),
Customer_id int foreign key references Customer(customer_id)
)

select * from payment

-----
alter table payment
add total_amount decimal (10,2), tax_5percent decimal (5,2)
----