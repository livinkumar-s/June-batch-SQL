use junebatch;

select * from cricketer;

insert into actordetails (id,name) values (16,"PersonX");

CREATE TABLE cricketer (
id int primary key auto_increment,
name varchar(30) not null unique,
isActive boolean default 1,
noOfCenturies int check(noOfCenturies>10)
);

INSERT INTO cricketer (name,isActive,noOfCenturies) values
("Sachin Tendulkar",0,51);


CREATE TABLE country (
id int primary key auto_increment,
country varchar(30) not null,
actorId int not null,
foreign key (actorId) references cricketer(id)
);

insert into country (country, actorId) values ("India",10);