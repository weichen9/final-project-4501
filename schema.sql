CREATE TABLE IF NOT EXISTS yellow
(
    id INTEGER PRIMARY KEY,
    pickup_datetime DATETIME,
    dropoff_datetime DATETIME,
    pickup_longitude float,
    pickup_latitude float,
    dropoff_longitude float,
    dropoff_latitude float,
    tip_amount float,
    total_amount float,
    distance float  
    
);

CREATE TABLE IF NOT EXISTS uber
(
    id INTEGER PRIMARY KEY,
    key DATETIME,
    fare_amount float,
    pickup_longitude float,
    pickup_latitude float,
    dropoff_longitude float,
    dropoff_latitude float,
    passenger_count,
    distance float  
    
);

CREATE TABLE IF NOT EXISTS daily_w
(
    id INTEGER PRIMARY KEY,
    DATE DATETIME,
    dailywindspeed float,
    dailyprecipitation float
    
    
);

CREATE TABLE IF NOT EXISTS hourly_w
(
    id INTEGER PRIMARY KEY,
    DATE DATETIME,
    HourlyWindSpeed float,
    HourlyPrecipitation float
    
    
)