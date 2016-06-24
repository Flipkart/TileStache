SELECT
        poi_nme,
        poi_alt,
        cat_code,
        cat_name,
        nat_poi,
        ST_Transform(geom, 900913) AS __geometry__

FROM poi_point

WHERE
        cat_code IN ('NTCWLS')                  -- Nature
    OR  cat_code IN ('TRNTRL', 'TRNARN')        -- Transportation
    OR  cat_code IN ('RCNCRS', 'RCNDAM')        -- Recreation
