
CREATE TABLE taxi_data (
	id INTEGER NOT NULL, 
	pickup_datetime DATETIME, 
	dropoff_datetime DATETIME, 
	pickup_longitude FLOAT, 
	pickup_latitude FLOAT, 
	dropoff_longitude FLOAT, 
	dropoff_latitude FLOAT, 
	tip_amount FLOAT, 
	total_amount FLOAT, 
	distance FLOAT, 
	PRIMARY KEY (id)
)


CREATE TABLE daily_weather (
	id INTEGER NOT NULL, 
	"Date" DATE, 
	"DailyWindSpeed" FLOAT, 
	"DailyPrecipitation" FLOAT, 
	PRIMARY KEY (id)
)


CREATE TABLE hourly_weather (
	id INTEGER NOT NULL, 
	"Date" DATETIME, 
	"HourlyWindSpeed" FLOAT, 
	"HourlyPrecipitation" FLOAT, 
	PRIMARY KEY (id)
)


CREATE TABLE uber (
	id INTEGER NOT NULL, 
	pickup_datetime DATETIME, 
	pickup_longitude FLOAT, 
	pickup_latitude FLOAT, 
	dropoff_longitude FLOAT, 
	dropoff_latitude FLOAT, 
	distance FLOAT, 
	PRIMARY KEY (id)
)

