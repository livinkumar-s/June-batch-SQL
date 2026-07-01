select * from products;
select @@autocommit;
set AUTOCOMMIT=1;

SELECT * from products;
CREATE TABLE dummy (id int);
UPDATE products set price=1001 where id=1;
commit;
rollback;

CREATE TABLE bank (
id int primary key auto_increment,
name varchar(50) not null,
balance double not null
);

INSERT INTO bank (name, balance) VALUES
('Alice', 1000.00),
('Bob', 1500.00),
('Charlie', 2000.00),
('David', 2500.00),
('Eve', 3000.00);

select * from bank;

START TRANSACTION;
update bank set balance=balance-100 where id=1;
update bank set balance=balance+100 where id=2;
SAVEPOINT s1;
update bank set balance=balance-100 where id=3;
update bank set balance=balance+100 where id=4;
COMMIT;
ROLLBACK to s1;