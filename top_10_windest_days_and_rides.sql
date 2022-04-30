
SELECT daily_weather.Date, count(date(pickup_datetime)) as trips
FROM daily_weather
JOIN
    (
    SELECT pickup_datetime
    FROM(
        SELECT pickup_datetime FROM yellow_taxi
        WHERE pickup_datetime LIKE '2014%'
        UNION
        SELECT pickup_datetime FROM uber
        WHERE pickup_datetime LIKE '2014%'
        )
    ) 
    ON daily_weather.Date = date(pickup_datetime)
GROUP BY daily_weather.Date
ORDER BY daily_weather.DailyWindSpeed DESC
