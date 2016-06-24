SELECT
        cat,
        ST_Transform(geom, 900913) AS __geometry__

FROM builtup_region

WHERE
        cat IN ('IND', 'TRN', 'EDU', 'EMR')
    OR  cat IN ('REC', 'CMN', 'COM')
    OR  cat IN ('INS', 'HIS', 'RES', 'OTH')
