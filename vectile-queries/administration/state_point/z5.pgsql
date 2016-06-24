SELECT
	upper(stt_nme),
	upper(stt_alt),
	t_pop,
	ST_Transform(geom, 900913) AS __geometry__

FROM state_point
