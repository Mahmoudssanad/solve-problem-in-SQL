/* 
                            question-01
Query the average population of all cities in CITY where District is California.*/
--                   solution 
select avg(population) from city where district in 'California';

/* 
                            question-02
Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N)
in STATION that is less than 137.2345.
Round your answer to 4 decimal places.*/
--                   solution 
select cast(round(long_w,4) as decimal(18,4)) from station where
    (lat_n in(select max(lat_n) from station where lat_n < 137.2345));