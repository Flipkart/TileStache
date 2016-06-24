SELECT
        poi_nme,
        poi_alt,
        cat_code,
        cat_name,
        nat_poi,
        ST_Transform(geom, 900913) AS __geometry__

FROM poi_point

WHERE
        cat_code IN ('NTCWLS', 'NTCLAK')                    -- Nature
    OR  cat_code IN ('TRNTRL', 'TRNARN', 'TRNMET')          -- Transportation
    OR  cat_code IN ('RCNCRS', 'RCNDAM', 'RCNAUS')          -- Recreation
    OR  cat_code IN ('COMTWH')                              -- Community
    OR  cat_code IN ('HISFRT')                              -- Historical
