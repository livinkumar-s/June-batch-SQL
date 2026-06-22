USE junebatch;

CREATE TABLE products (
id int primary key,
name varchar(30) not null,
price float not null,
category varchar(15) not null
);

INSERT INTO products (id, name, price, category) VALUES
(1, 'Laptop', 999.99, 'Electronics'),
(2, 'Smartphone', 499.99, 'Electronics'),
(3, 'Headphones', 199.99, 'Electronics'),
(4, 'Coffee Maker', 79.99, 'Home Appliances'),
(5, 'Blender', 59.99, 'Home Appliances'),
(6, 'Vacuum Cleaner', 149.99, 'Home Appliances'),
(7, 'T-shirt', 19.99, 'Clothing'),
(8, 'Jeans', 49.99, 'Clothing'),
(9, 'Jacket', 89.99, 'Clothing'),
(10, 'Sneakers', 69.99, 'Clothing'),
(11, 'Book', 14.99, 'Books'),
(12, 'Notebook', 4.99, 'Books'),
(13, 'Pen', 1.99, 'Books'),
(14, 'Tablet', 299.99, 'Electronics'),
(15, 'Monitor', 199.99, 'Electronics');

SELECT * from products;

SELECT count(name) from products;
SELECT max(price) from products;
SELECT min(price) from products;
SELECT avg(price) from products;
SELECT sum(price) from products;

SELECT name, avg(price) as avgPrice from products;
SELECT avg(price) as avgPrice from products where price>avg(price);

SELECT category,avg(price) from products
 GROUP BY category HAVING avg(price)>50;

select * from actorDetails;

select * from actorDetails order by age desc limit 1;


select * from actordetails 
where age = (SELECT max(age) FROm actordetails);