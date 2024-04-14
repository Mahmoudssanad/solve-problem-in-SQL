-- This is frist file in SQL problem solving

/* 
                            question-01
Query the average population for all cities in CITY,
rounded down to the nearest integer.
*/
--                   solution 
select avg(population) from city;

/* 
                            question-02
Query the sum of the populations for all Japanese cities in CITY. 
The COUNTRYCODE for Japan is JPN
*/
--                   solution 
select sum(population) from city where countrycode in 'JPN';

/* 
                            question-03
Query the difference between the maximum and minimum populations in CITY.
*/
--                   solution 
select (max(population) - min(population)) from city;


/* 
                            question-04
Query a count of the number of cities in CITY having a Population larger than 100000.
*/
--                   solution 
select count(*) from city where population > 100000;


/* 
                            question-05
Query the total population of all cities in CITY where District is California.
*/
--                   solution 
select sum(population) from city where district in 'California';