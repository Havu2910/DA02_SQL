--baitap 1
SELECT DISTINCT CITY FROM STATION
WHERE ID%2=0
-- bai tap 2

--BAI TAP 4
SELECT
ROUND(CAST(SUM(ORDER_OCCURRENCES*ITEM_COUNT)/SUM(ORDER_OCCURRENCES) 
AS DECIMAL),1)AS MEAN
FROM items_per_order
--BAI TAP 5
SELECT CANDIDATE_ID 
FROM candidates
WHERE SKILL IN ('Python', 'Tableau', 'PostgreSQL')
GROUP BY CANDIDATE_ID 
HAVING COUNT (SKILL)=3
-- BAI TAP 6
SELECT user_id, 
DATE(MAX(post_date)) - DATE(MIN(post_date)) AS days_between
FROM posts
WHERE (post_date >= '2021-01-01' AND post_date <'2022-01-01')
GROUP BY user_id
HAVING COUNT(post_id)>=2
-- BAI TAP 7
SELECT card_name,
MAX(issued_amount) - MIN(issued_amount) AS DIFFERENCE 
FROM monthly_cards_issued
GROUP BY card_name
ORDER BY DIFFERENCE DESC
-- BAI TAP 8
SELECT manufacturer,
COUNT(DRUG) AS DRUG_COUNT,
ABS(SUM (COGS - TOTAL_SALES)) AS TOTAL_LOSS
FROM pharmacy_sales
WHERE TOTAL_SALES<COGS
GROUP BY manufacturer
-- BAI TAP 9
SELECT * FROM Cinema,
WHERE id%2=1 AND description<>'boring',
ORDER BY rating DESC
-- bai tap 10
select teacher_id,
count(subject_id) as cnt
from Teacher
Group by teacher_id
-- bai tap 11
select user_id,
count(follower_id) as followers_count
from Followers
group by user_id
order by user_id
-- bai tap 12
select class
from Courses
group by class
having count(student)>=5

