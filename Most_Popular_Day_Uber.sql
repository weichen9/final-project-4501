
SELECT strftime('%w', pickup_datetime) AS day, COUNT(*)
FROM yellow_taxi 
GROUP BY day
ORDER BY COUNT(*) DESC
