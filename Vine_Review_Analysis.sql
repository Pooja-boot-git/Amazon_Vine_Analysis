-- creating schema in local postgres database and importing home improvement dataset
CREATE TABLE vine_table (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT,
  verified_purchase TEXT
);


-- select all vine reviews in one table
select star_rating,helpful_votes,total_votes,vine into vine_reviews 
	from vine_table 
	where vine = 'Y' 
	and total_votes >= 20 
	and (cast(helpful_votes as float)/cast(total_votes as float) >=0.5);

--select all non-vine reviews in one table
select star_rating,helpful_votes,total_votes,vine into non_vine_reviews  
	from vine_table 
	where vine = 'N' 
	and total_votes >= 20 
	and (cast(helpful_votes as float)/cast(total_votes as float) >=0.5);

--total paid reviews 
select * from vine_reviews; --266  
--total non-paid reviews
select count(*) from non_vine_reviews; --38829  

--total 5* paid reviews
select count(*) from vine_reviews where star_rating =5 --125 
--total 5* non-paid reviews
select count(*) from non_vine_reviews where star_rating =5 --18246 

-- percentage of 5* reviews for paid users
select star_5_count,total_reviews,
(cast(star_5_count as float)/cast (total_reviews as float)) * 100 as percentage
FROM 
(SELECT count(*) as star_5_count from vine_reviews where star_rating =5 ) as c
,(select count(*) as total_reviews from vine_reviews) as b

-- percentage of 5* reviews for non-paid users 
select star_5_count,total_reviews,
(cast(star_5_count as float)/cast (total_reviews as float)) * 100 as percentage
FROM 
(SELECT count(*) as star_5_count from non_vine_reviews where star_rating =5 ) as c
,(select count(*) as total_reviews from non_vine_reviews) as b

--drop table vine_reviews
--drop table non_vine_reviews


