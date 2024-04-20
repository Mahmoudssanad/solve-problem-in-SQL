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


    /* 
                            question-03
Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780.
Round your answer to 4 decimal places.*/
--                   solution 
select cast(round(min(lat_n),4) as decimal(18,4)) from station where lat_n > 38.7780;


/* 
                            question-04
Query the Western Longitude (LONG_W)where
the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780.
Round your answer to 4 decimal places.*/
--                   solution 
select cast(round(long_w,4) as decimal(18,4)) from station where (lat_n in 
(select min(lat_n) from station where lat_n > 38.7780)) ;


/* 
                            question-05
            consider P1(a,b) and P2(c,d)
a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
b happens to equal the minimum value in Western Longitude (LONG_W in STATION).
c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
d happens to equal the maximum value in Western Longitude (LONG_W in STATION).

Query the Manhattan Distance between points P1 and P2
and round it to a scale of 4 decimal places
*/
--                   solution 
select cast(round (
    ( max(lat_n) - min(lat_n) ) +  ( max(long_w) - min(long_w) )
    , 4) as decimal (18, 4)) from station; 