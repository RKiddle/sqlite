-- This is the first query:

SELECT DISTINCT year FROM population_years;

-- Add your additional queries below:
SELECT MAX(population)
FROM population_years
WHERE country = 'Gabon';

SELECT country
FROM population_years
WHERE year = 2005
ORDER BY population ASC
LIMIT 10;

SELECT DISTINCT country
FROM population_years
WHERE year = 2010 AND population > 100;

SELECT COUNT (country)
FROM population_years
WHERE country LIKE '%Islands%';

SELECT population - (SELECT population 
FROM population_years
WHERE country = 'Indonesia' AND year = 2000)
FROM population_years
WHERE country = 'Indonesia' AND year = 2010
;
