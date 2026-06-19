USE junebatch;

SELECT * FROM cricketer;
select * from iplteam;

SELECT c.name, i.name as IPLteam FROM cricketer c
INNER JOIN iplteam i 
ON c.id=i.playerid;

SELECT c.name, i.name as IPLteam FROM cricketer c
LEFT JOIN iplteam i 
ON c.id=i.playerid;

SELECT * FROM cricketer c
RIGHT JOIN iplteam i 
ON c.id=i.playerid;


SELECT * FROM cricketer c
LEFT JOIN iplteam i 
ON c.id=i.playerid

UNION

SELECT * FROM cricketer c
RIGHT JOIN iplteam i 
ON c.id=i.playerid;


INSERT INTO cricketer (name,noOfCenturies) VALUES 
("KL Rahul",30),
("Abishek Sharma",17),
("Rutu",18);

CREATE TABLE IPLteam (
id int primary key,
name varchar(20) not null,
playerId int not null
);

INSERT INTO iplteam VALUES 
(5,"PBKS",9);

SELECT c.name, country, i.name as IPLteam FROM cricketer 
c INNER JOIN country co ON c.id=co.actorId
INNER JOIN iplteam i on c.id=i.playerId;

SELECT * FROM cricketer CROSS JOIN iplteam;


SELECT * from iplteam i1 INNER JOIN iplteam i2 
ON i1.id=i2.playerId;