#Select  actors  who actor in any of these movies (101, 110, 121)
use moviesdb

select * from actors where actor_id in(
select actor_id from movie_actor
where movie_id in(101, 110, 121))

#Another Method
select * from actors where actor_id= ANY(
select actor_id from movie_actor
where movie_id in(101, 110, 121))

#Select all movies whose rating is greater than *any* of the marvel movies rating 
select * from movies where imdb_rating > all
(select max(imdb_rating) from movies where studio="Marvel Studios")