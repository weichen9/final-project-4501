
SELECT date(pickup_datetime) as date, count(date(pickup_datetime)) as rides, avg(distance) as 'average of day'
FROM
    (
    SELECT pickup_datetime, distance FROM yellow_taxi
    WHERE pickup_datetime LIKE '2009%'
    UNION
    SELECT pickup_datetime, distance FROM uber
    WHERE pickup_datetime LIKE '2009%'
    ORDER BY distance ASC
    )
GROUP BY date
ORDER BY rides DESC

