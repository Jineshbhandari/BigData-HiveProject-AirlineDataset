hadoop fs -mkdir -p /q1/stg/flight_stg/airports_stg/
hadoop fs -mkdir -p /q1/stg/flight_stg/airlines_stg/
hadoop fs -mkdir -p /q1/stg/flight_stg/routes_stg/
hadoop fs -mkdir -p /q1/gold/flight_gold/airports/
hadoop fs -mkdir -p /q1/gold/flight_gold/airlines/
hadoop fs -mkdir -p /q1/gold/flight_gold/routes/

cd ./files
hadoop fs -put airports_data /q1/stg/flight_stg/airports_stg/
hadoop fs -put airlines_data /q1/stg/flight_stg/airlines_stg/
hadoop fs -put routes_data /q1/stg/flight_stg/routes_stg/

cd ../hql

hive -f "airports_stg.hql"
hive -f "airlines_stg.hql"
hive -f "routes_stg.hql"
hive -f "airports.hql"
hive -f "airlines.hql"
hive -f "routes.hql"

INSERT OVERWRITE TABLE flight_gold.airport SELECT * FROM flight_stg.airport_stg;
INSERT OVERWRITE TABLE flight_gold.airlines SELECT * FROM flight_stg.airlines_stg; 
INSERT OVERWRITE TABLE flight_gold.routes SELECT * FROM flight_stg.routes_stg;  



