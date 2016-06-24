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
	'road_polyline' as layer,
        ST_Transform(geom, 900913) AS __geometry__

FROM road_polyline

WHERE
        ( FT != 1 )       -- Skip Ferryways
    AND
        ( frc = 0         -- Express Way
    OR  frc = 1           -- National Highway
    OR  frc = 2           -- State Highway and Main Road
    OR  frc = 3           -- Minor Road
    OR  frc = 4           -- Lane
    OR  frc = 5           -- Sub-Lane
    OR  freeway = 1 )     -- Freeway
