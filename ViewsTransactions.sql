use junebatch;

CREATE TABLE students (
    id INT PRIMARY KEY auto_increment,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15) UNIQUE NOT NULL,
    marks INT NOT NULL
);

insert into students (name, age, email, phone, marks) values
('John Doe', 20, 'john.doe@example.com', '123-456-7890', 85),
('Jane Smith', 22, 'jane.smith@example.com', '098-765-4321', 90),
('Alice Johnson', 19, 'alice.johnson@example.com', '555-555-5555', 88);

select * from students;

create view teacherView as select name,age,email,phone from students;
create view adminView as select name,email from students;


CREATE VIEW student_contact as select id,email,phone from students;

select * from student_contact;

create view cricketerCountry as select c.name,co.country,c.noOfCenturies from cricketer c inner join country co on c.id=co.actorId;

select * from cricketerCountry;