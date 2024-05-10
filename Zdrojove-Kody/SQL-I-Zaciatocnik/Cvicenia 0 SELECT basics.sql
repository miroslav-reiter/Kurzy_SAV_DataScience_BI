-- Vybrat vsetko
select
	*
from
	world;

/*
The example uses a WHERE clause to show the population of 'France'. Note that strings should be in 'single quotes';
Modify it to show the population of Germany
*/

select population 
from world
where name = 'Slovakia';

/*
 * 2.
Checking a list The word IN allows us to check if an item is in a list. The example shows the name and population for the countries 'Brazil', 'Russia', 'India' and 'China'.
Show the name and the population for 'Sweden', 'Norway' and 'Denmark'.
 */

-- sf - select FROM 
select distinct name, population  
from world 
where name in ('Sweden', 'Norway', 'Denmark', 'Iceland');


/*
 3.
Which countries are not too small and not too big? 
BETWEEN allows range checking (range specified is 
inclusive of boundary values). The example below 
shows countries with an area of 250,000-300,000 sq. km. 
Modify it to show the country and the area for countries with an area between 200,000 and 250,000.
*/
select distinct name, area 
from world
where area BETWEEN 200000 and 250000;


select distinct name, area 
from world
where area > 200000 and  area < 250000;

