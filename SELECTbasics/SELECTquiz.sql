-- Some questions concerning basic SQL statements
-- name	region	area	population	gdp
-- Afghanistan	South Asia	652225	26000000
-- Albania	Europe	28728	3200000	6656000000
-- Algeria	Middle East	2400000	32900000	75012000000
-- Andorra	Europe	468	64000
-- ...
-- 1. Select the code which produces this table
-- name	population
-- Bahrain	1234571
-- Swaziland	1220000
-- Timor-Leste	1066409
Select
  name,
  population
FROM world
WHERE
  population BETWEEN 1000000
  AND 1250000 -- 2. Pick the result you would obtain from this code:
  --     SELECT name, population
  --     FROM world
  --     WHERE name LIKE "Al%"
  table E -- 3. Select the code which shows the countries that end in A or L
SELECT
  name
FROM world
WHERE
  name IN ('%L', '%A') -- 4. Pick the result from the query
  -- SELECT name,length(name)
  -- FROM world
  -- WHERE length(name)=5 and region='Europe'
  spain italy malta --   5. Here are the first few rows of the world table:
  -- name	region	area	population	gdp
  -- Afghanistan	South Asia	652225	26000000
  -- Albania	Europe	28728	3200000	6656000000
  -- Algeria	Middle East	2400000	32900000	75012000000
  -- Andorra	Europe	468	64000
  -- ...
  -- Pick the result you would obtain from this code:
  -- SELECT name, area*2 FROM world WHERE population = 64000
  Andorra 936 -- 6. Select the code that would show the countries with an area larger than 50000 and a population smaller than 10000000
Select
  name,
  population,
  area
FROM world
WHERE
  area > 50000
  AND population < 10000000 -- 7. Select the code that shows the population density of China, Australia, Nigeria and France
Select
  name,
  population,
  area
FROM world
WHERE
  area > 50000
  AND population < 10000000 --   1.
  -- Read the notes about this table. Observe the result of running this SQL command to show the name, continent and population of all countries.