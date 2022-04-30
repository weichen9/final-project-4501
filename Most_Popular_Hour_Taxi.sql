
SELECT strftime('%H', pickup_datetime) as hour,count(*)
FROM yellow_taxi 
GROUP BY hour 
ORDER BY count(*) DESC
