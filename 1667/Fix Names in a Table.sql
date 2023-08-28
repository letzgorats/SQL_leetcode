## my code

select user_id, concat(upper(SUBSTR(name,1,1)), lower(SUBSTR(name,2)))as name
from Users
order by user_id



## someone's code - initcap In Oracle

select user_id, initcap(name) as name from Users order by user_id;
