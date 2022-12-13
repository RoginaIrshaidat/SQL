create table customer (
Id int primary key,
Name varchar(20)not null,
phone int,
);


create table order1 (
Id int primary key,
price int,
numOfProduct  int,
orderDate date,
);


create table Product (
Id int primary key,
price float,
nameOfProduct char(30),
);

create table Employee (
Id int primary key,
fName char (20) not null,
lName char(20),
salary int,
numOfHour int not null,
);
