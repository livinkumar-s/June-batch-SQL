USE junebatch;

SELECT * FROM actordetails;


Insert into actordetails value
(1,"Salman khan",44),
(2,"Shahrukh khan",50),
(3,"Aamir khan",56),
(4,"Ranbir kapoor",40),
(5,"Ranveer singh",38),
(6,"Hrithik roshan",48),
(7,"Ajay devgan",52),
(8,"Akshay kumar",56),(9,"Varun dhawan",32),
(10,"Sidharth malhotra",34),
(11,"Vicky kaushal",35),
(12,"Ayushmann khurrana",39),
(13,"Rajkumar rao",38),
(14,"Nawazuddin siddiqui",49),
(15,"Irrfan khan",53);


SELECT * FROM actordetails WHERE age>40;
SELECT * FROM actordetails WHERE age between 30 AND 45;
SELECT * FROM actordetails WHERE age IN (22,33,44,55,54,55,30);
SELECT * FROM actordetails WHERE age NOT IN (22,33,44,55,54,55,30);

SELECT * FROM actordetails WHERE age>45 and id<8;
SELECT * FROM actordetails WHERE age>45 or id<8;
select * from actordetails WHERE name LIKE "r%";
select * from actordetails WHERE name LIKE "%r";
select * from actordetails WHERE name LIKE "%s___h";

select * from actordetails order by name desc;

SELECT * FROM actordetails where age>30 order by name asc LIMIT 3 OFFSET 6;

SELECT *
FROM actordetails
ORDER BY age DESC limit 2;


