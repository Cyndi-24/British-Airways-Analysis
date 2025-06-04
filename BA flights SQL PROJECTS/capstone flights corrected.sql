--CREATING ROUTE TABLES
CREATE TABLE route (
  flight_number VARCHAR(20) PRIMARY KEY,
  depature_city VARCHAR(30),
  arrival_city  VARCHAR(30),
  distance_flown INT
);

--CREATING FUEL_EFFICIENCY TABLE
CREATE TABLE fuel_efficiency(
 ac_subtype VARCHAR(15) PRIMARY KEY,
 manufacturer VARCHAR(30), 
 fuel_efficiency NUMERIC(10,8),
 capacity INT
);

--CREATING FLIGHT TABLE
CREATE TABLE flight(
  flight_id VARCHAR(15) PRIMARY KEY,
  flight_number VARCHAR (15) REFERENCES route(flight_number),
  actual_flight_date DATE,
  status VARCHAR(30),
  delayed_flag VARCHAR(20),
  total_passenger INT,
  baggage_weight INT,
  bike_bags INT,
  revenue_from_baggage INT
);


--CREATING AIRCRAFTS TABLE
CREATE TABLE aircrafts(
  index_no INT PRIMARY KEY,
  flight_id VARCHAR(15)REFERENCES flight(flight_id),
  ac_subtype VARCHAR(15) REFERENCES fuel_efficiency(ac_subtype),
  manufacturer VARCHAR (30)
);
  
  
  QUESTIONS
--1) WHICH MANUFACTURER HAS THE BEST AIRCRAFTS IN TERMS OF FUEL EFFICIENCY?
SELECT  manufacturer,
       ROUND(AVG(fuel_efficiency),3) AS fuel_efficiency
FROM fuel_efficiency
GROUP BY manufacturer
ORDER BY fuel_efficiency
LIMIT 1;  

/*--2)DOES BRITISH AIRWAYS TEND TO USE AIRCRAFTS FROM MANUFACTURERS KNOWN FOR
THEIR SUPERIOR FUEL EFFICIENCY MORE FREQUENTLY */
SELECT a.manufacturer,
     ROUND(Avg(fuel_efficiency),3) AS fuel_efficiency,
     COUNT(a.flight_id) AS no_of_patronage
FROM fuel_efficiency as fe
INNER JOIN aircrafts AS a using(ac_subtype)
GROUP BY a.manufacturer
ORDER BY no_of_patronage;
INSIGHT; BA uses boeing manufacturer more frequently 

--3) Which month did passengers cancel flight the most?
SELECT SUM(total_passenger) AS no_of_passengers,
         EXTRACT (MONTH from actual_flight_date) AS month_no,
         CASE
		 WHEN EXTRACT (MONTH from actual_flight_date) =1 THEN 'JAN'
		 WHEN EXTRACT (MONTH from actual_flight_date) =2 THEN 'FEB'
		 WHEN EXTRACT (MONTH from actual_flight_date) =3 THEN 'MAR'
		 WHEN EXTRACT (MONTH from actual_flight_date) =4 THEN 'APR'
		 WHEN EXTRACT (MONTH from actual_flight_date) =5 THEN 'MAY'
		 ELSE 'JUN'
		 END As months
FROM flight
WHERE STATUS = 'Cancelled'
GROUP BY EXTRACT (MONTH from actual_flight_date)
ORDER BY no_of_passengers DESC;

--4)Which city do passengers travel the most?
SELECT r.arrival_city,
     SUM(f.total_passenger) AS no_of_passengers
FROM route AS r
INNER JOIN flight AS f using(flight_number)
GROUP BY arrival_city
ORDER BY no_of_passengers DESC
LIMIT 1;


--5)What is the revenue generated from baggage overtime?
SELECT  '$' ||  SUM(revenue_from_baggage) AS Total_revenue
FROM flight;

--6)what is the average number of passengers for each month like?
SELECT EXTRACT (MONTH from actual_flight_date) AS month_no,
       CASE	 
		 WHEN EXTRACT (MONTH from actual_flight_date) =1 THEN 'JAN'
		 WHEN EXTRACT (MONTH from actual_flight_date) =2 THEN 'FEB'
		 WHEN EXTRACT (MONTH from actual_flight_date) =3 THEN 'MAR'
		 WHEN EXTRACT (MONTH from actual_flight_date) =4 THEN 'APR'
		 WHEN EXTRACT (MONTH from actual_flight_date) =5 THEN 'MAY'
		 ELSE 'JUN'
		 END As months,
	   ROUND(AVG (total_passenger),0) AS avg_monthly_passengers
FROM flight
GROUP BY EXTRACT (MONTH from actual_flight_date)
ORDER BY avg_monthly_passengers DESC;