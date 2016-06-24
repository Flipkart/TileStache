SELECT
	city_nme,
	city_alt,
	t_pop,
	ST_Transform(geom, 900913) AS __geometry__

FROM city_point

-- Population greater than 10K
WHERE t_pop > 10000

-- Cities with greater population will be on top
ORDER BY t_pop DESC
