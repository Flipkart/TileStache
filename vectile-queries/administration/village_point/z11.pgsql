SELECT
	vil_nme,
	t_pop,
	type,
	ST_Transform(geom, 900913) AS __geometry__

FROM village_point

-- where Population is greater than 7K
WHERE t_pop > 7000

-- so that villages with greater population come at the top
ORDER BY t_pop DESC
