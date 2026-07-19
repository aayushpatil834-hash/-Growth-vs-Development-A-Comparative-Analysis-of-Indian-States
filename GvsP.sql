WITH population_gdp_rank AS
(
    SELECT
        p.`State/UT` AS state_name,
        p.Population_2024,
        g.gsdp_2023_24,

        DENSE_RANK() OVER
        (
            ORDER BY p.Population_2024 DESC
        ) AS population_rank,

        DENSE_RANK() OVER
        (
            ORDER BY g.gsdp_2023_24 DESC
        ) AS gdp_rank

    FROM state_population p

    LEFT JOIN state_gdp g
        ON p.`State/UT` = g.state_name
)

SELECT
    state_name,
    Population_2024,
    gsdp_2023_24,
    population_rank,
    gdp_rank,

    CAST(population_rank AS SIGNED)
    -
    CAST(gdp_rank AS SIGNED)
    AS rank_difference

FROM population_gdp_rank

ORDER BY rank_difference DESC;

WITH population_hdi_rank AS
(
    SELECT
        p.`State/UT` AS state_name,
        p.Population_2024,
        h.hdi,

        DENSE_RANK() OVER
        (
            ORDER BY p.Population_2024 DESC
        ) AS population_rank,

        DENSE_RANK() OVER
        (
            ORDER BY h.hdi DESC
        ) AS hdi_rank

    FROM state_population p

    LEFT JOIN state_hdi h
        ON p.`State/UT` = h.state_name
)

SELECT
    state_name,
    Population_2024,
    hdi,
    population_rank,
    hdi_rank,

    CAST(population_rank AS SIGNED)
    -
    CAST(hdi_rank AS SIGNED)
    AS rank_difference

FROM population_hdi_rank

ORDER BY rank_difference DESC;

WITH population_poverty_rank AS
( SELECT p.`State/UT` AS state_name, p.Population_2024, po.mpi_2023,
DENSE_RANK() OVER
( ORDER BY p.Population_2024 DESC
) AS population_rank,
DENSE_RANK() OVER
( ORDER BY po.mpi_2023 ASC
) AS poverty_rank FROM state_population p
LEFT JOIN state_poverty po
ON p.`State/UT` = po.state_name )
SELECT state_name, Population_2024, mpi_2023,
population_rank, poverty_rank,
CAST(population_rank AS SIGNED) -
CAST(poverty_rank AS SIGNED)
AS rank_difference
FROM population_poverty_rank
ORDER BY rank_difference DESC;

WITH population_income_rank AS
( SELECT p.`State/UT` AS state_name, p.Population_2024, i.per_capita_2024,
DENSE_RANK() OVER
( ORDER BY p.Population_2024 DESC
) AS population_rank,
DENSE_RANK() OVER
( ORDER BY i.per_capita_2024 DESC
) AS income_rank FROM state_population p
LEFT JOIN state_per_capita i
ON p.`State/UT` = i.state_name )
SELECT state_name, Population_2024, per_capita_2024,
population_rank, income_rank,
CAST(population_rank AS SIGNED) -
CAST(income_rank AS SIGNED)
AS rank_difference
FROM population_income_rank
ORDER BY rank_difference DESC;

WITH population_literacy_rank AS
( SELECT p.`State/UT` AS state_name, p.Population_2024, l.literacy_2024,
DENSE_RANK() OVER
( ORDER BY p.Population_2024 DESC
) AS population_rank,
DENSE_RANK() OVER
( ORDER BY l.literacy_2024 DESC
) AS literacy_rank FROM state_population p
LEFT JOIN state_literacy l
ON p.`State/UT` = l.state_name )
SELECT state_name, Population_2024, literacy_2024,
population_rank, literacy_rank,
CAST(population_rank AS SIGNED) -
CAST(literacy_rank AS SIGNED)
AS rank_difference
FROM population_literacy_rank
ORDER BY rank_difference DESC;

WITH gdp_hdi_rank AS
( SELECT g.state_name, g.gsdp_2023_24, h.hdi,
DENSE_RANK() OVER
( ORDER BY g.gsdp_2023_24 DESC
) AS gdp_rank,
DENSE_RANK() OVER
( ORDER BY h.hdi DESC
) AS hdi_rank FROM state_gdp g
LEFT JOIN state_hdi h
ON g.state_name = h.state_name )
SELECT state_name, gsdp_2023_24, hdi,
gdp_rank, hdi_rank,
CAST(gdp_rank AS SIGNED) -
CAST(hdi_rank AS SIGNED)
AS rank_difference
FROM gdp_hdi_rank
ORDER BY rank_difference DESC;