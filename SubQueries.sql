CREATE TABLE studentdetails (
id int primary key auto_increment,
name varchar(20) not null,
mark int not null,
dept enum("EEE","ECE","CS")
);


-- 15 records
insert into studentdetails(name, mark, dept) values
("John", 85, "EEE"),
("Alice", 90, "ECE"),
("Bob", 78, "CS"),
("Eve", 92, "EEE"),
("Charlie", 88, "ECE"),
("David", 75, "CS"),
("Frank", 80, "EEE"),
("Grace", 95, "ECE"),
("Hannah", 82, "CS"),
("Ivy", 89, "EEE"),
("Jack", 91, "ECE"),
("Kathy", 77, "CS"),
("Leo", 84, "EEE"),
("Mia", 93, "ECE"),
("Nina", 79, "CS");


select * from studentdetails;
select avg(mark) from studentdetails;

select * from studentdetails
 where mark>(select avg(mark) from studentdetails);
 
select mark from studentdetails where dept="CS";

select * from studentdetails
 where mark > ANY (select mark from studentdetails where dept="CS");
 
select * from studentdetails
 where mark > ALL (select mark from studentdetails where dept="CS");
 

 select dept from studentdetails where mark>=90;

select * from studentdetails 
where dept in (select dept from studentdetails where mark>=90);

SELECT * FROM studentdetails s1
WHERE mark> (select avg(mark) from studentdetails where dept=s1.dept);

SELECT name,price,category,(select avg(price) from products where category=p1.category)
 as avgPrice from products p1;

