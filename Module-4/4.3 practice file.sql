use moviesdb
# select the actor id, actor name and the total number of movies they acted in 
select a.actor_id,a.name,count(*) as movies_count
from movie_actor ma
join actors a
on a.actor_id=ma.actor_id
group by a.actor_id
order by movies_count desc
------------------------------------------------------------------------------
SELECT *  FROM actors

SELECT 
	actor_id,
    name, 
   ( SELECT COUNT(*) FROM movie_actor 
    WHERE actor_id=actors.actor_id) movies_count
from actors
order by movies_count desc



