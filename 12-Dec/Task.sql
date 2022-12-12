create table customers (
Id int primary key,
Name varchar(20)not null,
phone int,
);

create table orders (
Id int primary key,
price double,
numOfProduct  int,
);