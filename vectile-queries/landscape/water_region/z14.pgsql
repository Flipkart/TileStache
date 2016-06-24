SELECT
	nme,
	cat,
	ST_Transform(geom, 900913) AS __geometry__

FROM water_region

--
-- Water Regions which aren't of type:
-- Muddy Area, Salt Pans
--
WHERE cat NOT IN ('MUD', 'SLT')
