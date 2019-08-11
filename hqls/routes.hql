Create EXTERNAL Table IF NOT EXISTS flight_gold.routes
(Airline String,
Airline_ID String,
Source_airport String,
Source_airport_ID String,
Destination_airport String,
Destination_airport_id String,
Codeshare String,
Stops Double,
Equipment Double
)
COMMENT 'Routes details'
STORED AS ORC
LOCATION '/q1/gold/flight_gold/routes/';

