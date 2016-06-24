SELECT
        ft,
        f_elev,
        t_elev,
        frc,
        ftr_cry,
        name,
        alt_name,
        routenum,
        fow,
        freeway,
        backrd,
        rdcond,
        privaterd,
        oneway,
        kph,
        routable,
        spd_limit,
        const_st,
        ST_Transform(geom, 900913) AS __geometry__

FROM road_polyline

WHERE
        ( FT != 1 )       -- Skip Ferryways
    AND
        ( frc = 0         -- Express Way
    OR  frc = 1           -- National Highway
    OR  frc = 2           -- State Highway and Main Road
    OR  freeway = 1 )     -- Freeway
