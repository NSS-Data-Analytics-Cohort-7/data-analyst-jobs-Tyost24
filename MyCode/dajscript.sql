/* Q1 There are 1793 Row */
/*SELECT *
FROM data_analyst_jobs;*/

/*Q2 Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row? 
Answer: the 10th row company is XTO Land Data Analyst*/

/*Select *
from data_analyst_jobs
Limit 10; */

/*Q3 How many postings are in Tennessee? How many are there in either Tennessee or Kentucky?
There are 21 posting in Tn.
There are 27 postings that are in TN or KY
 */

/*Select count (*)
from data_analyst_jobs
Where location = 'TN'*/

/*Select count (*)
from data_analyst_jobs
Where location = 'TN'
or location = 'KY';*/

/* Q4 How many postings in Tennessee have a star rating above 4? 
There are 4 Posting in TN and above 4 stars*/

/*Select *
from data_analyst_jobs
Where location = 'TN'
and star_rating >= 4; */

/* Q5 How many postings in the dataset have a review count between 500 and 1000? 
There are 151 postings between 500 and 1000 */

/* Select count (*)
from data_analyst_jobs
where review_count Between 500 and 1000; */

/* Q6 Show the average star rating for companies in each state. The output should show the state as state and the average rating for the state as avg_rating. Which state shows the highest average rating? 
 The top 3 states are Nebraska, Rhode Island and Kansas */

/*Select avg(star_rating) AS avg_rating, location AS state
from data_analyst_jobs
where star_rating is not NUll
Group by location
Order by avg_rating DESC
Limit 3; */

/* Q7 Select unique job titles from the data_analyst_jobs table. How many are there? */

















