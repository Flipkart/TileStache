SELECT
        subl_nme,
        subl_alt,
        ST_Transform(geom, 900913) AS __geometry__

FROM sublocality_point
