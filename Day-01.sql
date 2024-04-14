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
