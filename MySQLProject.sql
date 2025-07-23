-- Creeaza baza de date daca nu exista
CREATE DATABASE IF NOT EXISTS MySQLProject;
USE MySQLProject;

-- Create clients
create table if not exists clients2 (
	client_id int primary key,
	name varchar(100),
    email varchar(100)
    );

-- Create orders
create table if not exists orders2 (
	order_id int primary key,
    client_id int,
    order_date date,
    price decimal(10,2),
	quantity decimal(5,1),
    foreign key (client_id) references clients2 (client_id)
);
    
-- Add data in the table
-- Clients
insert into clients2 (client_id, name, email) values
(1, 'Ana Maria', 'ana@email.com'),
(2, 'Andrei Cosmin', 'cosmin@email.com'),
(3, 'Tedi Velcu', 'velcu@email.com'),
(4, 'Dan Marius', 'dan@email.com');

insert into orders2 (order_id, client_id, order_date, price, quantity) values
(100, 1, '2025-01-11', 5, 111),
(101, 3, '2025-03-12', 6, 200),
(102, 2, '2025-12-12', 7, 290),
(103, 2, '2025-03-10', 8, 300);

-- SUM & COUNT
-- Select Datebase
USE MySQLProject;

-- 1. How many clients exist?
SELECT COUNT(*) AS name FROM clients2;

-- How many orders have sum greater than 200
SELECT COUNT(*) AS quantity
FROM orders2
WHERE quantity > 200;

-- What is the total of quantity?
SELECT SUM(quantity) AS total_of_qtty FROM orders2;

-- What is the total value of the products in orders?
SELECT SUM(price * quantity) AS total_value_qtty
FROM orders2;

-- Select & Join
-- Display all clients
SELECT * FROM clients2 ;

-- Display all orders along with the customer's name
SELECT c.name, o.order_id, o.order_date, o.quantity
FROM clients2 c
JOIN orders2 o ON c.client_id = o.client_id;

-- Display clients that have no orders
select	name
from clients2
where client_id not in (select client_id from orders2);

-- Display orders greater than 200
select * from orders2
where quantity > 200;
