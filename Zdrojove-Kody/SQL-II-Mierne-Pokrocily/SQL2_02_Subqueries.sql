-- 1. List each country in the same continent as 'Brazil'.

select name
from world
where continent = (select continent  
from world
where name = 'Brazil');

select continent  
from world
where name = 'Brazil';

-- 2. List each country and its continent 
-- in the same continent as 'Brazil' or 'Mexico'.

-- Main/Hlavny/Vonkajsi dopyt
select name, continent  
from world;

-- Vedlajsi/Vnutorny dopyt
select continent 
from world
where name in ("Brazil", "Mexico");


select name, continent  
from world
where continent in (select continent 
from world
where name in ("Brazil", "Mexico")) ;


-- 3. Show the population of China as a 
-- multiple of the population of the United Kingdom

select population 
from world
where name = 'China';

select population 
from world
where name = 'United Kingdom';

select
(select population 
from world
where name = 'China') /
(select population 
from world
where name = 'United Kingdom');

SELECT
 population/(SELECT population FROM world
             WHERE name='United Kingdom')
  FROM world
WHERE name = 'China'


-- 4. Show each country that has a population greater 
-- than the population of ALL countries in Europe.

select name, population  
from world
order by population DESC;

select population
from world
where continent = 'Europe'
order by population DESC;

select name, population  
from world
where population > ALL (select population
from world
where continent = 'Europe'
order by population DESC)
order by population DESC;

-- 1. List each country name where the population 
-- is larger than that of 'Russia'.

select name, population 
from world
where population > (select population 
from world 
where name = 'Russia')
order by population  DESC;

-- 2. Show the countries in Europe with a 
-- per capita GDP greater than 'United Kingdom'.

select name 
from world
where continent = 'Europe'
and gdp/population > (select gdp/population 
from world where name = 'United Kingdom')


-- 3. List the name and continent of countries 
-- in the continents containing either 
-- Argentina or Australia. Order by name of the country.

select name, continent
from world
where continent in (select continent from world
where name in ('Argentina', 'Australia'))
order by name ASC


-- 4. Which country has a population 
-- that is more than United Kingdom but less than Germany? 
-- Show the name and the population.

select name, population
from world
where population > (select population from world
where name = 'United Kingdom')
and population < (select population from world
where name = 'Germany')


/* 5. Germany (population 80 million) has the 
largest population of the countries in Europe. 
Austria (population 8.5 million) has 11% of 
the population of Germany.
Show the name and the population of 
each country in Europe. 
Show the population as a percentage
 of the population of Germany*/


select name, concat(round(population / (select population 
from world
where name = 'Germany')*100, 0), '%') as 'Percent'
from world
where continent = 'Europe'

/* 6.
Which countries have a GDP greater than every country in Europe? [Give the name only.] 
(Some countries may have NULL gdp values)
*/

select name 
from world
where gdp > all (select gdp from world 
where continent = 'Europe' and gdp is not null)