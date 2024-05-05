/* 
                            question-01
Harry Potter and his friends are at Ollivander's with Ron,
finally replacing Charlie's old broken wand.

Hermione decides the best way to choose is by determining the minimum number of 
gold galleons needed to buy each non-evil wand of high power and age.
Write a query to print the id, age, coins_needed, and 
power of the wands that Ron's interested in, sorted in order of descending power.
If more than one wand has same power, sort the result in order of descending age.
*/
--                   solution 
select id, age, coins_needed,power from
(select id, age, coins_needed,power, 
row_number() over(partition by age,power order by coins_needed) as rn
from wands w join Wands_Property wp
on w.code = wp.code and is_evil = 0) as new_table
where rn = 1
order by power desc, age desc,coins_needed;


/* 
                            question-02
Write a query identifying the type of each record in the TRIANGLES table 
using its three side lengths. Output one of the following statements
for each record in the table:

Equilateral: It's a triangle with  sides of equal length.
Isosceles: It's a triangle with  sides of equal length.
Scalene: It's a triangle with  sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.
*/
--                   solution 
select (case 
            when (A = B and B = C) then "Equilateral"
            when (A + B <= C OR B + C <= A OR A + C <= B) 
            THEN "Not A Triangle"
            when (A = B OR B = C OR A = C) THEN "Isosceles"
            ELSE "Scalene"
        END) AS Triangle_Type
FROM TRIANGLES; 