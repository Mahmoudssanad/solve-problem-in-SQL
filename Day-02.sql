/* 
                            question-01
Query the average population of all cities in CITY where District is California.*/
--                   solution 
select avg(population) from city where district in 'California';