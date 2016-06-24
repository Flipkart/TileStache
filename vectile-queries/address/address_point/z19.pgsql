SELECT
        bldg_num,
        bldg_nme,
        adr_type,
        ST_Transform(geom, 900913) AS __geometry__

FROM address_point
