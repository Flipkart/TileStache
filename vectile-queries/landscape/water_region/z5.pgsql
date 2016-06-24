SELECT
	nme,
	cat,
	ST_Transform(geom, 900913) AS __geometry__

FROM water_region

--
-- Water Regions which aren't of type:
-- Muddy Area, Salt Pans, Lake, Pond, Seasonal Water
--
WHERE cat NOT IN ('MUD', 'SLT', 'LAK', 'PND', 'SWT')
