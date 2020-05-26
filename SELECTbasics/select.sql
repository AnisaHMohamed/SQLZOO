-- Simple SELECT
-- The simplest SELECT commands involve a single table:
-- SQL	Result
-- SELECT name, population
--   FROM bbc
--  WHERE region='North America'
-- name	population
-- Canada	32000000
-- United States of America	295000000
-- The SELECT line determines which columns to show - in this case name and population, both of which are columns of the bbc table.
-- The WHERE clause determines which rows to show
-- The SELECT statement may involve data from more than one table using a JOIN or a UNION.
-- SELECT statements may nested - that is the output from one SELECT may be the input to another SELECT.
-- The output from a SELECT may be added to another table using INSERT .. SELECT
-- The select statement may aggregate values using a SELECT .. GROUP BY clause
-- 1.
-- The example uses a WHERE clause to show the population of 'France'. Note that strings (pieces of text that are data) should be in 'single quotes';
-- world
-- name	continent	area	population	gdp
-- Afghanistan	Asia	652230	25500100	20343000000
-- Albania	Europe	28748	2831741	12960000000
-- Algeria	Africa	2381741	37100000	188681000000
-- Andorra	Europe	468	78115	3712000000
-- Angola	Africa	1246700	20609294	100990000000
-- ....
--population of france
SELECT
  population
FROM world
WHERE
  name = 'France' --population of Germany
SELECT
  population
FROM world
WHERE
  name LIKE 'Germany';
-- 2.
  -- Checking a list The word IN allows us to check if an item is in a list. The example shows the name and population for the countries 'Brazil', 'Russia', 'India' and 'China'.
  -- Show the name and the population for 'Sweden', 'Norway' and 'Denmark'.
SELECT
  name,
  population
FROM world
WHERE
  name IN ('Sweden', 'Norway', 'Denmark')
SELECT
  name,
  population
FROM world
WHERE
  name IN ('Brazil', 'Russia', 'India', 'China');
-- 3.
  -- Which countries are not too small and not too big? BETWEEN allows range checking (range specified is inclusive of boundary values). The example below shows countries with an area of 250,000-300,000 sq. km. Modify it to show the country and the area for countries with an area between 200,000 and 250,000.
SELECT
  name,
  area
FROM world
WHERE
  area BETWEEN 250000
  AND 300000
SELECT
  name,
  area
FROM world
WHERE
  area BETWEEN 200000
  AND 250000 -- 1.
  -- Read the notes about this table. Observe the result of running this SQL command to show the name, continent and population of all countries.
SELECT
  name,
  continent,
  population
FROM world -- 2.
  -- How to use WHERE to filter records. Show the name for the countries that have a population of at least 200 million. 200 million is 200000000, there are eight zeros.
SELECT
  name
FROM world
WHERE
  population = 64105700
SELECT
  name
FROM world
WHERE
  population > 200000000 -- 3.
  -- Give the name and the per capita GDP for those countries with a population of at least 200 million.
  -- HELP:How to calculate per capita GDP
  -- per capita GDP is the GDP divided by the population GDP/population
SELECT
  name,
  gdp / population
from world
WHERE
  population >= 200000000 -- 4.
  -- Show the name and population in millions for the countries of the continent 'South America'. Divide the population by 1000000 to get population in millions.
SELECT
  name,
  population / 1000000
FROM world
WHERE
  continent = 'South America' --  5.
  -- Show the name and population for France, Germany, Italy
SELECT
  name,
  population
FROM world
WHERE
  name IN ('France', 'Germany', 'Italy')