SELECT
	ftr_cry,
	ST_Transform(geom, 900913) AS __geometry__

FROM railway_polyline
