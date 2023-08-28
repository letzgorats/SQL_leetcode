select id, movie, description, rating
from Cinema
where 1=1
and description <> 'boring' 
and mod(id, 2) = 1
order by rating DESC;
