use moviesdb
#Select a movie with highest imdb_rating 
select * from movies
order by imdb_rating desc
limit 1

-- Another method
select * from movies
where imdb_rating=(select max(imdb_rating) from movies)

--------------------------------------------------------------

select * from movies
where imdb_rating in(
		(select min(imdb_rating) from movies),
		(select max(imdb_rating) from movies))

#select all the actor  whose age >70 and age <85
select * from
(select
	name,
	year(curdate())-birth_year as age
from actors) as actors_age
where age>70 and age<85


#returned a single value
#returned a list of value
#returner a table 
