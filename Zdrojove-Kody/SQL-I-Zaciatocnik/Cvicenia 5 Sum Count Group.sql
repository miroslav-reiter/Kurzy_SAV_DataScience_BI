
select distinct * from world;

-- Pocet krajin bez duplicit
select count(distinct name) from world;

-- Celkovy pocet riadkov aj vratene prazdne riadky
select count(*) from world;

select count(distinct name) from world;

/*
 * 1.Show the total population of the world.
 */
select sum(distinct population) 
from world w; 

select sum(distinct population) 
from world w
where continent = 'Europe' or continent = 'Africa'; 

/*
2. List all the continents - just once each.
*/

select distinct continent  from world;

select continent as KONTI 
from world as w
group by continent;

/* 3. Give the total GDP of Africa
*/

select sum(distinct gdp) as 'GDP_Afrika'
from world
where continent = 'Africa';

/*
4. How many countries have an area of at least 1000000
*/

select count(distinct name) as 'Pocet Krajin'
from world
where area >= 1000000;

/* 5. What is the total population 
of ('Estonia', 'Latvia', 'Lithuania')
 */

select sum(distinct population) as 'Obyvatelia Pobaltie'
from world
-- where name in ('Estonia', 'Latvia', 'Lithuania');
where name = 'Estonia'
or name = 'Latvia'
or name = 'Lithuania';

/*
 * 6. For each continent show the continent and number of countries.
*/
select continent, count(distinct name)
from world
group by continent 
ORDER by count(distinct name) DESC;

/* 7.
For each continent show the continent and 
number of countries with populations of at least 10 million.
*/

select
	continent ,
	count(distinct name)
from
	world
where population  >= 10000000
group by
	continent
order by count(distinct name) DESC;


/*
8. List the continents that have a 
total population of at least 100 million.
*/

select continent,
from world
group by continent
-- having = where upraveny pre agregacne funkcie...
having sum(population) >= 100000000
