select * from EMP;

select * from world;

# Prvych 5 krajin
select * from world limit 5;

select * from world limit 4,5;

select * from world
where name = "Slovakia"

-- sf
select
	*
from
	world;

-- swhere
select
	*
from
	world
where
	name = 'Slovakia';
	
select name, area, population
from world;


select name, continent, population  from world
where name in ("Austria", "Slovakia", "Spain")

select * from EMP;

select * from EMP
where sal BETWEEN 1000 and 2500;

select * from EMP
order by SAL DESC;

select * from EMP
order by SAL ASC;

select * from EMP
where comm is not null;

select * from EMP
where comm is null;

select *, cast(HIREDATE as char) from EMP;

select cast('2023-11-29' as date);