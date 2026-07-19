WITH development_score AS
(
SELECT
    p.`State/UT` AS state_name,

    DENSE_RANK() OVER
    (ORDER BY p.Population_2024 DESC)
    AS population_rank,

    DENSE_RANK() OVER
    (ORDER BY g.gsdp_2023_24 DESC)
    AS gdp_rank,

    DENSE_RANK() OVER
    (ORDER BY pc.per_capita_2024 DESC)
    AS income_rank,

    DENSE_RANK() OVER
    (ORDER BY h.hdi DESC)
    AS hdi_rank,

    DENSE_RANK() OVER
    (ORDER BY l.literacy_2024 DESC)
    AS literacy_rank,

    DENSE_RANK() OVER
    (ORDER BY po.mpi_2023 ASC)
    AS poverty_rank

FROM state_population p

JOIN state_gdp g
ON p.`State/UT` = g.state_name

JOIN state_per_capita pc
ON p.`State/UT` = pc.state_name

JOIN state_hdi h
ON p.`State/UT` = h.state_name

JOIN state_literacy l
ON p.`State/UT` = l.state_name

JOIN state_poverty po
ON p.`State/UT` = po.state_name
)

SELECT

state_name,

population_rank,
gdp_rank,
income_rank,
hdi_rank,
literacy_rank,
poverty_rank,

ROUND
(
37 -

(
population_rank*0.05 +
gdp_rank*0.05 +
income_rank*0.15 +
hdi_rank*0.30 +
literacy_rank*0.20 +
poverty_rank*0.25
),

2
) AS development_score

FROM development_score

ORDER BY development_score DESC;