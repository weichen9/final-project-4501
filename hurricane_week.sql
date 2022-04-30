
SELECT date(hourly_weather.Date) as date, strftime('%H', pickup_datetime) as hour, count(strftime('%H', pickup_datetime)) as trips, hourly_weather.HourlyPrecipitation, hourly_weather.HourlyWindSpeed
FROM hourly_weather
JOIN
    (
    SELECT pickup_datetime
    FROM(
        SELECT pickup_datetime FROM yellow_taxi
        WHERE date(pickup_datetime) BETWEEN '2012-10-23' AND '2012-10-30'
        UNION
        SELECT pickup_datetime FROM uber
        WHERE date(pickup_datetime) BETWEEN '2012-10-23' AND '2012-10-30'
        )
    ) 
ON date(hourly_weather.Date) = date(pickup_datetime)
WHERE date(hourly_weather.Date) BETWEEN '2012-10-23'AND '2012-10-30'
GROUP BY date, hour
