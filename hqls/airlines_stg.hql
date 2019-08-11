Create EXTERNAL Table IF NOT EXISTS flight_stg.airlines_stg
(Airline_id String,
Airline_name String,
Alias String,
IATA_code String,
ICAO_code String,
Callsign String,
Country String,
Active String)
COMMENT 'Airline details'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/q1/stg/flight_stg/airlines_stg/';


