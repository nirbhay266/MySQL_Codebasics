#Get all the actors whose age is between  70  and 85
use moviesdb
select * from actors

select actor_name,age from 
(select name actor_name , year(curdate())-birth_year as age from actors) as actor_age
where age>70 and age<85
-------------------------------------------------------------------------------------
with actor_age as (
select 
	name as actor_name,
    year(curdate())-birth_year as age 
    from actors
)
select actor_name,age 
from actor_age
where age>70 and age<85

# movies that produced 500% or more profit and their rating was less than avg rating for all movies

# movies that produced 500% or more profit


select x.movie_id,x.pct_profit,
	   y.title, y.imdb_rating 
from (select *,(revenue-budget)*100/budget as pct_profit 
    from financials)x
join (
	select * from movies
	where imdb_rating<(select avg(imdb_rating) from movies)
) y
on x.movie_id=y.movie_id
where pct_profit>500

#CTE
with 
	x as(select *,(revenue-budget)*100/budget as pct_profit 
    from financials) ,
    y as(select * from movies
	where imdb_rating<(select avg(imdb_rating) from movies)
	)
select x.movie_id,x.pct_profit,
	   y.title, y.imdb_rating 
from x
join y
on x.movie_id=y.movie_id
where pct_profit>500


-- Select all Hollywood movies released after the year 2000 that made more than 500 million $ profit or more
-- profit. Note that all Hollywood movies have millions as a unit hence you don't need to do the unit 
-- conversion. Also, you can write this query without CTE as well but you should try to write this using 
-- CTE only
select * from movies
select * from financials

SELECT m.industry, m.release_year, m.movie_id, (f.revenue - f.budget) AS profit
FROM movies m
JOIN financials f ON f.movie_id = m.movie_id
WHERE m.industry = 'Hollywood' AND m.release_year > 2000 AND (f.revenue - f.budget) > 500;

#CTE

	with cte as (select title, release_year, (revenue-budget) as profit
			from movies m
			join financials f
			on m.movie_id=f.movie_id
			where industry="hollywood" and release_year>2000
	)
	select * from cte where profit>500
		











