SELECT
        loc_nme,
        loc_alt,
        ST_Transform(geom, 900913) AS __geometry__

FROM locality_point
