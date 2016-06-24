SELECT
        poi_nme,
        poi_alt,
        cat_code,
        cat_name,
        nat_poi,
        ST_Transform(geom, 900913) AS __geometry__

FROM poi_point

WHERE
        cat_code IN ('NTCWLS', 'NTCLAK', 'NTCFAL', 'NTCBCH')                            -- Nature
    OR  cat_code IN ('TRNTRL', 'TRNARN', 'TRNMET', 'TRNRAL', 'TRNSEA', 'TRNBST')        -- Transportation
    OR  cat_code IN ('RCNCRS', 'RCNDAM', 'RCNAUS', 'RCNAUD', 'RCNPRK', 'RCNSTA')        -- Recreation
    OR  cat_code IN ('COMTWH', 'COMCLG', 'COMCRT', 'COMCRM', 'COMGOV', 'COMPOL')        -- Community
    OR  cat_code IN ('HISFRT', 'HISMON')                                                -- Historical
    OR  cat_code IN ('HOTPRE')                                                          -- Hotels
    OR  cat_code IN ('SHPBLD')                                                          -- Commercial
    OR  cat_code IN ('SHPMAL')                                                          -- Shopping
    OR  cat_code IN ('HLTHRH')                                                          -- Health
