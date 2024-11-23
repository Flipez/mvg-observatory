SELECT
    name,
    delay
FROM
(
    SELECT
        station,
        avg(delayInMinutes) AS delay
    FROM
    (
        SELECT *
        FROM erp.unoptimized AS r
        WHERE (transportType = 'UBAHN') AND (label LIKE 'U%')
        ORDER BY timestamp DESC
        LIMIT 1 BY plannedDepartureTime
    )
    GROUP BY station
) AS x
INNER JOIN mvg.stations ON x.station = stations.id
ORDER BY delay ASC