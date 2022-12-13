CREATE TABLE customers (
	CustomerID INT IDENTITY,
	FirstName VARCHAR(255) NOT NULL,
	Email VARCHAR(100) ,
	PRIMARY KEY(CustomerID)
);

CREATE TABLE orders (
	OrderID INT IDENTITY PRIMARY KEY,
	CustomerID INT NOT NULL,
	soldQuantity int NOT NULL,
	FOREIGN KEY (CustomerID) REFERENCES customers
);

CREATE TABLE products (
	ProductID INT IDENTITY PRIMARY KEY,
	OrderID INT,
	Name VARCHAR(150) NOT NULL,
	price float NOT NULL,	 
	FOREIGN KEY (OrderID) REFERENCES orders
);

INSERT INTO customers VALUES ('Rogina','rogina@gmail.com');
INSERT INTO customers ( Email,FirstName)
VALUES('razan@gmail.com','Razan');

INSERT INTO orders (CustomerID, soldQuantity)
VALUES (1,3), (1,4), (2,2), (2,7);

INSERT INTO products (OrderID, Name, price)
VALUES (1,'sugar',5.5), (1,'pepsi',.75), (2,'spagti',1), (3,'pepsi',.75),(3,'rice',7.25), (4,'sugar',5.5), (4,'choclate',2.35), (4,'chips',1.35);



select * from customers
JOIN orders ON customers.CustomerID = orders.CustomerID
JOIN products ON products.OrderID = orders.OrderID;


select * from customers
Right JOIN orders ON customers.CustomerID = orders.CustomerID
Right JOIN products ON products.OrderID = orders.OrderID;