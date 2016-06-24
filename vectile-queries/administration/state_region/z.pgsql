SELECT
	'state_region' as layer,
	ST_Transform(geom, 900913) AS __geometry__

FROM state_region
