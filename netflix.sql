

-- SCHEMAS of Netflix

DROP TABLE IF EXISTS netflix;
CREATE TABLE netflix
(
	show_id	VARCHAR(5),
	type    VARCHAR(10),
	title	VARCHAR(250),
	director VARCHAR(550),
	casts	VARCHAR(1050),
	country	VARCHAR(550),
	date_added	VARCHAR(55),
	release_year	INT,
	rating	VARCHAR(15),
	duration	VARCHAR(15),
	listed_in	VARCHAR(250),
	description VARCHAR(550)
);

SELECT * FROM netflix;
--  BEGINNER SQL QUESTIONS (Netflix Dataset)

--1 ️Show all data from the Netflix table
select * from netflix

--2 ️Show only Movies
select * from netflix
where type = 'Movie'

--3 ️Show only TV Shows.
select * from netflix
where type = 'TV Show'

️--4 Find total number of records in the Netflix table.
SELECT COUNT(*) AS total_records
FROM netflix;

--5 Find how many Movies and how many TV Shows are on Netflix.
select count(*),type from netflix
group by type

--6 Show the list of unique ratings.
select distinct(rating) from netflix

--7 Find how many countries are listed on Netflix.
select count (distinct(country)) from netflix

--8 Show Movies released in 2020.
select * from netflix
where release_year  = 2020 and type = 'Movie'

--9 Display titles in alphabetical order.
select * from netflix
order by title ASC;

--10 Show only the top 10 recently added shows.
select * from netflix
order by date_added desc
limit 10;
 
--INTERMEDIATE SQL QUESTIONS (Netflix Dataset)

--11.Find the total count for each type (Movie / TV Show).
select count(*),type from netflix
group by type

--12.Find the total number of shows for each rating.
select count(*) as total_shows,rating from netflix
group by rating

--13.Find the most common rating on Netflix.?
select count(*) as total_shows,rating from netflix
group by rating
order by count(*) desc
limit 1
--14.Find the number of shows released in each release_year.
select count(*) as shows,release_year from netflix
group by release_year

--15.Display only those years that have more than 50 shows.
select count(*) as shows,release_year from netflix
group by release_year
having count(*) > 50

--16.Find the count of Movies from the United States.
select count(*) as shows,country,type from netflix
group by country,type
having country = 'United States' and type='Movie'
--17.Display TV Shows related to India.
select country,type,title from netflix
where country='India' and type='TV Show'

--18.Using CASE WHEN, divide content into Old / New
--Old: release_year < 2015

New: release_year ≥ 2015
 select release_year ,
  case
  when release_year < 2015 then 'old'
  when release_year >= 2015 then 'new'
  else 'middle'
  end
  from netflix;
--19.Find the count of shows where the director is NULL.
select count(*) from netflix
where director is null
--
select count(*),director from netflix
group by director
having director is null


--20.Find the oldest release year for each type.
select type,min(release_year) from netflix
group by type

--21 Find the count of Movies only for each release_year.
select count(*),type,release_year from netflix
where type = 'Movie'
group by 2,3

--22.For each rating, show separate counts of Movies and TV Shows.
SELECT rating,
       COUNT(CASE WHEN type = 'Movie' THEN 1 END) AS movie_count,
       COUNT(CASE WHEN type = 'TV Show' THEN 1 END) AS tvshow_count
FROM netflix
GROUP BY rating
ORDER BY rating;

--23.Find the top 5 release years in which the maximum number of shows were added.
select release_year,count(*) as shows from netflix
group by release_year
order by shows desc
limit 5
--24.Find the total number of shows for each country, but display only those countries that have more than 100 shows.
select country,count(*) as shows from netflix
group by country
having count(*) > 100
order by shows desc
--25.Among Movies released after 2018, which rating is most common?
select count(*),rating from netflix
where release_year > 2018 and type='Movie'
group by rating
order by count(*) desc
Limit 1

--26.Find the average release_year for each type (Movie / TV Show).
select avg(release_year),type from netflix
group by type

--27.Display the titles of shows whose duration is NULL or blank.
select title,duration from netflix
where duration is null or duration = ' '











