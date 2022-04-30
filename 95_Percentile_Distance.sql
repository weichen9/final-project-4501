
SELECT distance
FROM
(
SELECT pickup_datetime, distance FROM yellow_taxi
WHERE pickup_datetime LIKE '2013-07%'
UNION
SELECT pickup_datetime, distance FROM uber
WHERE pickup_datetime LIKE '2013-07%'
ORDER BY distance ASC
)
ORDER BY distance
LIMIT 1
OFFSET (SELECT
         COUNT(*)
        FROM (
            SELECT pickup_datetime, distance FROM yellow_taxi
            WHERE pickup_datetime LIKE '2013-07%'
            UNION
            SELECT pickup_datetime, distance FROM uber
            WHERE pickup_datetime LIKE '2013-07%'
            ORDER BY distance ASC
            )
        ) * 95 / 100 - 1;
