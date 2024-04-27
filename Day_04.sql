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