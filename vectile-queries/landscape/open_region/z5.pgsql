SELECT
	nme,
	cat,
	ST_Transform(geom, 900913) AS __geometry__

FROM open_region
