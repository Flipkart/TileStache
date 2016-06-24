SELECT
        poi_nme,
        poi_alt,
        cat_code,
        cat_name,
        nat_poi,
        ST_Transform(geom, 900913) AS __geometry__

FROM poi_point

WHERE
        cat_code IN ('NTCWLS', 'NTCLAK', 'NTCFAL', 'NTCBCH')                                                                                        -- Nature
    OR  cat_code IN ('TRNTRL', 'TRNARN', 'TRNMET', 'TRNRAL', 'TRNSEA', 'TRNBST', 'TRNMRN', 'TRNBUS')                                                -- Transportation
    OR  cat_code IN ('RCNCRS', 'RCNDAM', 'RCNAUS', 'RCNAUD', 'RCNPRK', 'RCNSTA', 'RCNCIN', 'RCNCLB', 'RCNZOO')                                      -- Recreation
    OR  cat_code IN ('COMTWH', 'COMCLG', 'COMCRT', 'COMCRM', 'COMGOV', 'COMPOL', 'COMCMB', 'COMEMB', 'COMPTO', 'COMSCH', 'COMBAN', 'COMPCK')        -- Community
    OR  cat_code IN ('HISFRT', 'HISMON')                                                                                                            -- Historical
    OR  cat_code IN ('HOTPRE', 'HOTNOP', 'HOTRES', 'HOTALL')                                                                                        -- Hotels
    OR  cat_code IN ('SHPBLD', 'SHPREP', 'SHPIND')                                                                                                  -- Commercial
    OR  cat_code IN ('SHPMAL', 'SHPMKT', 'SHPPLZ', 'SHPMAN', 'SHPOTH')                                                                              -- Shopping
    OR  cat_code IN ('HLTHRH', 'HLTMED', 'HLTVTH', 'HLTMDS')                                                                                        -- Health
    OR  cat_code IN ('FINATM', 'FINBNK')                                                                                                            -- Financial
    OR  cat_code IN ('FODIND', 'FODPUB', 'FODBAK')                                                                                                  -- Restaurants
    OR  cat_code IN ('LCSAPT', 'LCSFHS', 'LCSIHS')                                                                                                  -- Residential
    OR  cat_code IN ('PLPBUD', 'PLPCHU', 'PLPGUR', 'PLPHIN', 'PLPISL', 'PLPJAN', 'PLPOTH')                                                          -- Religious
