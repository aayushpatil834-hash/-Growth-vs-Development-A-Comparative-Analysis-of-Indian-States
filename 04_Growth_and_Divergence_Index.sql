WITH growth_score AS
(
SELECT

g.state_name,

DENSE_RANK() OVER(ORDER BY p.Population_2024 DESC) population_rank,
DENSE_RANK() OVER(ORDER BY g.gsdp_2023_24 DESC) gdp_rank,
DENSE_RANK() OVER(ORDER BY pc.per_capita_2024 DESC) income_rank,
DENSE_RANK() OVER(ORDER BY h.hdi DESC) hdi_rank,
DENSE_RANK() OVER(ORDER BY l.literacy_2024 DESC) literacy_rank,
DENSE_RANK() OVER(ORDER BY po.mpi_2023 ASC) poverty_rank

FROM state_gdp g

JOIN state_population p
ON g.state_name = p.`State/UT`

JOIN state_per_capita pc
ON g.state_name = pc.state_name

JOIN state_hdi h
ON g.state_name = h.state_name

JOIN state_literacy l
ON g.state_name = l.state_name

JOIN state_poverty po
ON g.state_name = po.state_name
)

SELECT

state_name,

population_rank,
gdp_rank,
income_rank,
hdi_rank,
literacy_rank,
poverty_rank,

ROUND(
37 -
(
population_rank*0.15 +
gdp_rank*0.35 +
income_rank*0.25 +
hdi_rank*0.10 +
literacy_rank*0.10 +
poverty_rank*0.05
),
2
) AS growth_score

FROM growth_score

ORDER BY growth_score DESC;

WITH development_score AS
(
SELECT

g.state_name,

DENSE_RANK() OVER(ORDER BY p.Population_2024 DESC) population_rank,
DENSE_RANK() OVER(ORDER BY g.gsdp_2023_24 DESC) gdp_rank,
DENSE_RANK() OVER(ORDER BY pc.per_capita_2024 DESC) income_rank,
DENSE_RANK() OVER(ORDER BY h.hdi DESC) hdi_rank,
DENSE_RANK() OVER(ORDER BY l.literacy_2024 DESC) literacy_rank,
DENSE_RANK() OVER(ORDER BY po.mpi_2023 ASC) poverty_rank

FROM state_gdp g

JOIN state_population p
ON g.state_name=p.`State/UT`

JOIN state_per_capita pc
ON g.state_name=pc.state_name

JOIN state_hdi h
ON g.state_name=h.state_name

JOIN state_literacy l
ON g.state_name=l.state_name

JOIN state_poverty po
ON g.state_name=po.state_name
)

SELECT

state_name,

population_rank,
gdp_rank,
income_rank,
hdi_rank,
literacy_rank,
poverty_rank,

ROUND(
37-
(
population_rank*0.05+
gdp_rank*0.05+
income_rank*0.10+
hdi_rank*0.30+
literacy_rank*0.25+
poverty_rank*0.25
),
2
) AS development_score

FROM development_score

ORDER BY development_score DESC;

WITH paradox AS
(
SELECT

g.state_name,

DENSE_RANK() OVER(ORDER BY p.Population_2024 DESC) population_rank,
DENSE_RANK() OVER(ORDER BY g.gsdp_2023_24 DESC) gdp_rank,
DENSE_RANK() OVER(ORDER BY pc.per_capita_2024 DESC) income_rank,
DENSE_RANK() OVER(ORDER BY h.hdi DESC) hdi_rank,
DENSE_RANK() OVER(ORDER BY l.literacy_2024 DESC) literacy_rank,
DENSE_RANK() OVER(ORDER BY po.mpi_2023 ASC) poverty_rank

FROM state_gdp g

JOIN state_population p
ON g.state_name=p.`State/UT`

JOIN state_per_capita pc
ON g.state_name=pc.state_name

JOIN state_hdi h
ON g.state_name=h.state_name

JOIN state_literacy l
ON g.state_name=l.state_name

JOIN state_poverty po
ON g.state_name=po.state_name
)

SELECT

state_name,

population_rank,
gdp_rank,
income_rank,
hdi_rank,
literacy_rank,
poverty_rank,

ROUND(
(
population_rank*0.05+
hdi_rank*0.45+
literacy_rank*0.30+
poverty_rank*0.20
),
2
) AS social_score,

ROUND(
(
gdp_rank*0.60+
income_rank*0.40
),
2
) AS growth_score,

ROUND(
(
gdp_rank*0.60+
income_rank*0.40
)
-
(
population_rank*0.05+
hdi_rank*0.45+
literacy_rank*0.30+
poverty_rank*0.20
),
2
) AS paradox_score

FROM paradox

ORDER BY paradox_score;

WITH divergence AS
( SELECT p.`State/UT` AS state_name,
DENSE_RANK() OVER(ORDER BY p.Population_2024 DESC) population_rank,
DENSE_RANK() OVER(ORDER BY g.gsdp_2023_24 DESC) gdp_rank,
DENSE_RANK() OVER(ORDER BY i.per_capita_2024 DESC) income_rank,
DENSE_RANK() OVER(ORDER BY h.hdi DESC) hdi_rank,
DENSE_RANK() OVER(ORDER BY l.literacy_2024 DESC) literacy_rank,
DENSE_RANK() OVER(ORDER BY po.mpi_2023 ASC) poverty_rank
FROM state_population p
JOIN state_gdp g ON p.`State/UT`=g.state_name
JOIN state_per_capita i ON p.`State/UT`=i.state_name
JOIN state_hdi h ON p.`State/UT`=h.state_name
JOIN state_literacy l ON p.`State/UT`=l.state_name
JOIN state_poverty po ON p.`State/UT`=po.state_name )

SELECT state_name,population_rank,gdp_rank,income_rank,hdi_rank,literacy_rank,poverty_rank,
ROUND(((hdi_rank*0.40)+(literacy_rank*0.35)+(poverty_rank*0.25)),2)
AS social_score,
ROUND(((population_rank*0.20)+(gdp_rank*0.45)+(income_rank*0.35)),2)
AS growth_score,
ROUND(ABS((((population_rank*0.20)+(gdp_rank*0.45)+(income_rank*0.35))-((hdi_rank*0.40)+(literacy_rank*0.35)+(poverty_rank*0.25)))),2)
AS divergence_index
FROM divergence
ORDER BY divergence_index DESC;
