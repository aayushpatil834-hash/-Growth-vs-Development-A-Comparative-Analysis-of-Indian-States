SELECT *
FROM metro_gdp;

SELECT *
FROM `city population`;

SELECT *
FROM state_population;

SELECT *
FROM state_hdi;

SELECT *
FROM state_poverty;

SELECT *
FROM state_literacy;

SELECT *
FROM state_per_capita;

SELECT COUNT(*)
FROM metro_gdp;

SELECT COUNT(*)
FROM state_population;

SELECT COUNT(*)
FROM state_hdi;

SELECT COUNT(*)
FROM state_literacy;

SELECT *
FROM metro_gdp
WHERE metro_city IS NULL;

SELECT DISTINCT state_name
FROM metro_gdp
ORDER BY state_name;

SELECT metro_city,
       metro_gdp
FROM metro_gdp
ORDER BY metro_gdp DESC;

SELECT metro_city,
       metro_gdp
FROM metro_gdp
ORDER BY metro_gdp DESC;

SELECT
    state_name,
    ROUND(SUM(metro_gdp),2) AS total_gdp
FROM metro_gdp
GROUP BY state_name
ORDER BY total_gdp DESC;

SELECT
    `State/UT`,
    Population_2024
FROM state_population
ORDER BY Population_2024 DESC
LIMIT 10;

SELECT state_name, gsdp_2023_24
FROM state_gdp
ORDER BY gsdp_2023_24 DESC
LIMIT 10;

SELECT
    state_name,
    mpi_2023
FROM state_poverty
ORDER BY mpi_2023 DESC 
limit 5;

SELECT state_name, literacy_2024
FROM state_literacy
ORDER BY literacy_2024 DESC 
limit 10;


SELECT
    MAX(Population_2024) AS highest_population,
    MIN(Population_2024) AS lowest_population,
    ROUND(AVG(Population_2024),0) AS average_population
FROM state_population;

SELECT
    MAX(metro_gdp) AS highest_gdp,
    MIN(metro_gdp) AS lowest_gdp,
    ROUND(AVG(metro_gdp),2) AS average_gdp
FROM metro_gdp;

SELECT
    metro_city,
    state_name,
    metro_gdp
FROM metro_gdp
ORDER BY metro_gdp DESC
LIMIT 10;