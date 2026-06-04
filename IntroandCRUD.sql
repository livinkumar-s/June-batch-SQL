CREATE DATABASE juneBatch;

USE junebatch;

CREATE TABLE actordetails (
id int primary key,
name varchar(20),
age int
);

INSERT INTO actordetails VALUE 
(4,"Salmon khan",44);

SELECT * FROM actordetails;
SELECT * FROM actordetails WHERE name="Salmon khan";

UPDATE actordetails SET age=50 WHERE id=4;

DELETE FROM actordetails WHERE id=3;
TRUNCATE TABLE actordetails;

SET SQL_SAFE_UPDATES=1;