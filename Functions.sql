use JUNEBATCH;
select name as actorsName, age as actorsAge from actordetails;
select 56 as result;


select round(44.71114,2) as result;
select floor(44.9999999) as result;
select ceil(44.0000001) as result;
select mod(23,2) as modResult;
select abs(55) as absNum;
select power(5,5) as absNum; 
select sqrt(81) as result; 

select concat("hello"," ","world","....!") as result;
select length("Hello world") as len;
select UPPER("hello world") as str;
select LOWER("hEllo WoRld") as str;
select TRIM("       hEllo WoRld       ") as str;
select LTRIM("       hEllo WoRld       ") as str;
select RTRIM("       hEllo WoRld       ") as str;
select substring("Hello world",1,5) as result;
select replace("Hello Hello Hello world","Hello","Hi") as result;
select reverse("Hello");
select curdate() as today;
select curtime() as time;
select now() as now;
select datediff("2026-06-15",curdate()) as diff;

select UPPER(name) from actordetails;

select concat("His name is ",upper(name)," his age is ",age,"years old.") 
as details from actordetails;