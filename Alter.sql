USE junebatch;

SELECT * from iplteam;

ALTER TABLE actordetails ADD jersey int;
ALTER TABLE actordetails ADD dummy1 int, add dummy2 int;
ALTER TABLE actordetails add dummy3 int after name;
ALTER TABLE actordetails modify name varchar(25);
ALTER TABLE actordetails CHANGE dummy3 dummy33 bigint;
ALTER TABLE actordetails drop column dummy2;
ALTER TABLE actordetails RENAME TO actors;

ALTER TABLE iplteam ADD CONSTRAINT fk_team foreign key (playerId)
references cricketer(id);