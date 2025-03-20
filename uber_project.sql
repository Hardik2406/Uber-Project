show databases;
use uber;
show tables;

select * from sql_assignment_uber_ride_insights sauri ;

SELECT DISTINCT pickup_location 
FROM sql_assignment_uber_ride_insights sauri ;

select count(*)
FROM sql_assignment_uber_ride_insights sauri ;

select avg(ride_duration)
from sql_assignment_uber_ride_insights sauri ;

SELECT driver_id, SUM(fare_amount) AS total_earnings 
FROM sql_assignment_uber_ride_insights sauri 
GROUP BY driver_id 
ORDER BY total_earnings DESC LIMIT 10;

select payment_method, count(*) as ride_id 
from sql_assignment_uber_ride_insights sauri 
group by payment_method ;

select *
from sql_assignment_uber_ride_insights sauri 
where fare_amount >20;

select pickup_location, count(*) as ride_id
from sql_assignment_uber_ride_insights sauri 
group by pickup_location 
order by ride_id desc limit 1;

select avg(fare_amount)
from sql_assignment_uber_ride_insights sauri ;

select driver_id, avg(rating) as avg_rating  
from sql_assignment_uber_ride_insights sauri 
group by driver_id 
order by avg_rating desc limit 10;

select sum(fare_amount)
from sql_assignment_uber_ride_insights sauri ;

select count(*)
from sql_assignment_uber_ride_insights sauri 
where payment_method = 'Cash' ;

select count(fare_amount)
from sql_assignment_uber_ride_insights sauri 
where payment_method = 'Credit Card' ;

select pickup_location, count(*), avg(ride_distance)
from sql_assignment_uber_ride_insights sauri 
where pickup_location ="dhanbad";

select *
from sql_assignment_uber_ride_insights sauri 
where ride_duration <10;

select passenger_id, count(*) as ride_timestamp 
from sql_assignment_uber_ride_insights sauri 
group by passenger_id
order by ride_timestamp desc limit 1;

select driver_id, count(*) as ride_timestamp
from sql_assignment_uber_ride_insights sauri 
group by driver_id 
order by ride_timestamp desc;

select distinct payment_method
from sql_assignment_uber_ride_insights sauri 
where pickup_location ="gandhinagar";

select distinct payment_method 
from sql_assignment_uber_ride_insights sauri 
where pickup_location ="gandhinagar" and payment_method ="cash";

select avg(fare_amount) 
from sql_assignment_uber_ride_insights sauri 
where fare_amount <1000;

select driver_id, passenger_id 
from sql_assignment_uber_ride_insights sauri ;
order by passenger_id desc ;

SELECT d.driver_id, d.driver_name, COUNT(r.ride_id) AS total_rides
FROM rides r
JOIN drivers d ON r.driver_id = d.driver_id
GROUP BY d.driver_id, d.driver_name
ORDER BY total_rides DESC;

select pickup_location, count(*) as ride_count, round(count(*)*100.0) as percentage
from sql_assignment_uber_ride_insights sauri 
group by pickup_location
order by percentage desc ;


select pickup_location, count(pickup_location) from sql_assignment_uber_ride_insights sauri group by pickup_location;

select pickup_location, count(*) as ride_count from sql_assignment_uber_ride_insights sauri group by pickup_location ;

select count(pickup_location) from sql_assignment_uber_ride_insights sauri ;

select *
from sql_assignment_uber_ride_insights sauri 
where pickup_location = dropoff_location ;  
_____________________________________________________________________

select * from sql_assignment_uber_ride_insights sauri ;

SELECT passenger_id, COUNT(DISTINCT pickup_location) AS distinct_locations
from sql_assignment_uber_ride_insights sauri 
GROUP BY passenger_id
HAVING distinct_locations >= 300;

select avg(fare_amount)
from sql_assignment_uber_ride_insights sauri 
where dayofweek(STR_TO_DATE(ride_timestamp, '%m/%d/%Y %H:%i'))>5;

#select ride_timestamp,(STR_TO_DATE(ride_timestamp)) from sql_assignment_uber_ride_insights sauri ;

SELECT AVG(fare_amount) 
FROM sql_assignment_uber_ride_insights sauri 
WHERE DAYOFWEEK(STR_TO_DATE(ride_timestamp, '%d/%m/%Y'));

select distinct driver_id, ride_distance
from sql_assignment_uber_ride_insights sauri 
where ride_distance >19;

select driver_id, sum(fare_amount) as total_earnings
from sql_assignment_uber_ride_insights sauri 
group by driver_id 
order by count(ride_id) >100; 

select *
from sql_assignment_uber_ride_insights sauri 
where fare_amount < (select avg(fare_amount) from sql_assignment_uber_ride_insights sauri);

select avg(fare_amount) 
from sql_assignment_uber_ride_insights sauri ;
		
select passenger_id, sum(fare_amount) as total_spending
from sql_assignment_uber_ride_insights sauri 
join sql_assignment_uber_ride_insights sauri on passenger_id = passenger_id
group by passenger_id
order by total_spending desc ;


SELECT passenger_id, SUM(fare_amount) AS total_spending
FROM sql_assignment_uber_ride_insights sauri 
GROUP BY passenger_id
ORDER BY total_spending DESC
LIMIT 10;

select month (STR_TO_DATE(ride_timestamp, '%m/%d/%Y %H:%i')) as month_of_year, avg(fare_amount) as avg_fare
from sql_assignment_uber_ride_insights sauri 
group by month_of_year;

select * from sql_assignment_uber_ride_insights sauri

select pickup_location, dropoff_location, count(*) as ride_count
from sql_assignment_uber_ride_insights sauri 
group by pickup_location , dropoff_location 
order by ride_count desc limit 10;

select driver_id, sum(fare_amount) as total_earnings
from sql_assignment_uber_ride_insights sauri 
group by driver_id 
order by total_earnings desc limit 10;

#select passenger_id,
from sql_assignment_uber_ride_insights sauri 
where date_add(pickup_location) = date_add(ride_timestamp) 

select driver_id, avg(fare_amount) as avg_fare
from sql_assignment_uber_ride_insights sauri 
group by driver_id 
order by avg_fare desc ;

select ride_id, avg(ride_distance) as avg_distance
from sql_assignment_uber_ride_insights sauri 
where ride_distance < (select avg(ride_distance) from sql_assignment_uber_ride_insights sauri)
group by ride_id;

select driver_id, count(driver_id) as ride_count
from sql_assignment_uber_ride_insights sauri 
group by driver_id 
order by ride_count

SELECT AVG(fare_amount)
FROM sql_assignment_uber_ride_insights sauri 
WHERE passenger_id IN (SELECT passenger_id from sql_assignment_uber_ride_insights sauri GROUP BY passenger_id HAVING COUNT(*) >= 20);

select pickup_location, avg(fare_amount) as avg_amount
from sql_assignment_uber_ride_insights sauri 
group by pickup_location 
order by avg_amount desc limit 1;

#SELECT AVG(rating) FROM sql_assignment_uber_ride_insights sauri 
#WHERE driver_id IN (SELECT driver_id FROM sql_assignment_uber_ride_insights sauri GROUP BY driver_id  having COUNT(*) >= 100);

SELECT passenger_id
FROM sql_assignment_uber_ride_insights sauri 
GROUP BY passenger_id
HAVING COUNT(DISTINCT pickup_location) >= 5;

#SELECT AVG(fare_amount)
#FROM sql_assignment_uber_ride_insights sauri
#WHERE passenger_id in (SELECT passenger_id FROM sql_assignment_uber_ride_insights sauri WHERE rating > 4);

select ride_id, ride_duration, pickup_location from sql_assignment_uber_ride_insights sauri where ride_duration=
(select min(ride_duration) from sql_assignment_uber_ride_insights sauri2);

____________________________________________________________________________________________________
#Advance_level

select distinct pickup_location,driver_id
from sql_assignment_uber_ride_insights sauri 
where pickup_location in (select pickup_location from sql_assignment_uber_ride_insights sauri);

select distinct pickup_location, driver_id from sql_assignment_uber_ride_insights sauri 

select avg(fare_amount) as total_spent
from sql_assignment_uber_ride_insights sauri 
where passenger_id in (select passenger_id from sql_assignment_uber_ride_insights sauri2 where fare_amount >300);

select driver_id, avg(fare_amount) as avg_earnings
from sql_assignment_uber_ride_insights sauri 
group by driver_id 
order by avg_earnings asc limit 5;

select avg(fare_amount)
from sql_assignment_uber_ride_insights sauri 
where passenger_id in (select passenger_id from sql_assignment_uber_ride_insights sauri group by passenger_id order by count(distinct payment_method));

select *
from sql_assignment_uber_ride_insights sauri 
where fare_amount > (select avg(fare_amount) from sql_assignment_uber_ride_insights sauri);

select avg(fare_amount)
from sql_assignment_uber_ride_insights sauri 
where passenger_id in (select passenger_id from sql_assignment_uber_ride_insights sauri group by passenger_id having count(distinct payment_method));

select pickup_location, avg(fare_amount) as avg_fare,
(avg(fare_amount) - (select avg(fare_amount)from sql_assignment_uber_ride_insights sauri)) * 100.0 / (select avg(fare_amount) from sql_assignment_uber_ride_insights sauri2) as percentage_increase
from sql_assignment_uber_ride_insights sauri3 
group by pickup_location
order by percentage_increase desc;

select *
from sql_assignment_uber_ride_insights sauri 
where pickup_location = dropoff_location ;

select * from sql_assignment_uber_ride_insights sauri 





