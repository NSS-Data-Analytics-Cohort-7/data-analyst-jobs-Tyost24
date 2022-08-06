/* Q1 
--There are 1793 Row */
/*SELECT *
FROM data_analyst_jobs;*/



/*Q2 Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row? 
--Answer: the 10th row company is XTO Land Data Analyst*/

/*Select *
from data_analyst_jobs
Limit 10; */



/*Q3 How many postings are in Tennessee? How many are there in either Tennessee or Kentucky?
--There are 21 posting in Tn.
--There are 27 postings that are in TN or KY
 */

/*Select count (*)
from data_analyst_jobs
Where location = 'TN'*/

/*Select count (*)
from data_analyst_jobs
Where location = 'TN'
or location = 'KY';*/



/* Q4 How many postings in Tennessee have a star rating above 4? 
--There are 4 Posting in TN and above 4 stars*/

/*Select *
from data_analyst_jobs
Where location = 'TN'
and star_rating >= 4; */



/* Q5 How many postings in the dataset have a review count between 500 and 1000? 
--There are 151 postings between 500 and 1000 */

/* Select count (*)
from data_analyst_jobs
where review_count Between 500 and 1000; */



/* Q6 Show the average star rating for companies in each state. The output should show the state as state and the average rating for the state as avg_rating. Which state shows the highest average rating? 
--The top state is Nebraska*/

/*Select avg(star_rating) AS avg_rating, location AS state
from data_analyst_jobs
where star_rating is not NUll
Group by location
Order by avg_rating DESC
Limit 1; */



/* Q7 Select unique job titles from the data_analyst_jobs table. How many are there? 
--There are 881 Unique job titles */

/*Select count (Distinct(title))
From data_analyst_jobs */

/* Q* How many unique job titles are there for California companies? 
--There are 230 unique job titles in California */

/* Select count (Distinct(title))
from data_analyst_jobs
where location = 'CA'; */



/* Q9 Find the name of each company and its average star rating for all companies that have more than 5000 reviews across all locations. How many companies are there with more that 5000 reviews across all locations?
-- There are 45 companies with more than 5000 reviews */

/*Select Distinct(company), sum(review_count) as review_count, avg(star_rating) as avg_rating
from data_analyst_jobs
where review_count > 5000 and company is not NULL
Group by company, review_count
Order by avg_rating DESC; */



/* Q10 Add the code to order the query in #9 from highest to lowest average star rating. Which company with more than 5000 reviews across all locations in the dataset has the highest star rating? What is that rating? 
--American Express with an average star raging of 4.19 */

/*Select company, review_count, avg(star_rating) as avg_rating
from data_analyst_jobs
where review_count > 5000 and company is not NULL
Group by company, review_count
Order by avg_rating DESC; */



/* Q11 Find all the job titles that contain the word ‘Analyst’. How many different job titles are there? 
--There are 774 unigue job titles with the word Analyst in it*/

/*Select count(Distinct(title))
from data_analyst_jobs
Where title like '%_nalyst%' or title like '%_NALYST%';*/

/* Q12 How many different job titles do not contain either the word ‘Analyst’ or the word ‘Analytics’? What word do these positions have in common? 
-- There are 4 job titles do not contain Analyst or Analytics and they all involve data visulations. */

/*Select Distinct(title)
from data_analyst_jobs
Where title Not Like '%_nalyst%' AND title Not Like '%_NALYST%'
and title Not like '%_nalytics%' and title not like '%_NALYTICS%'*/


/* BONUS 
-- the 3 industries are Banks and Finacial Services with 6 jobs, Consulting and Business Services with 7 postings and InsuranceHealth Care with 3 all ove 3 weeks */

/*Select count(domain),domain, skill
from data_analyst_jobs
where days_since_posting >21 
and domain is not NULL
and skill like '%SQL%'
Group by domain, days_since_posting, skill
Order by count DESC */
































