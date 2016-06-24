SELECT
	city_nme,
	city_alt,
	t_pop,
	ST_Transform(geom, 900913) AS __geometry__

FROM city_point

-- Population greater than 40L
WHERE t_pop > 4000000

-- Cities with greater population will be on top
ORDER BY t_pop DESC
