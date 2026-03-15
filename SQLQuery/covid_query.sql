SELECT *
FROM covid_table;

ALTER TABLE covid_table
DROP COLUMN "countryInfo";
ALTER TABLE covid_table
DROP COLUMN "todayCases";

ALTER TABLE covid_table
DROP COLUMN "todayDeaths";

ALTER TABLE covid_table
DROP COLUMN "todayRecovered";

ALTER TABLE covid_table
DROP COLUMN "updated";

-- there is no nulls 
SELECT *
FROM covid_table
WHERE cases IS NULL;

-- there is no negative values
SELECT *
FROM covid_table
WHERE cases < 0 OR deaths < 0;

SELECT *
FROM covid_table
WHERE deaths > cases;

SELECT *
FROM covid_table
WHERE population = 0;

DELETE FROM covid_table
WHERE population = 0;

SELECT country,
"casesPerOneMillion",
(cases * 1000000.0 / population) AS correct_value
FROM covid_table;