SELECT * FROM film;
SELECT * FROM category;

/*Task: Create a list of all the different (distinct) replacement costs of the films.

Question: What's the lowest replacement cost?*/

SELECT distinct replacement_cost 
FROM film
order by 1
limit 1;

/*Task: Write a query that gives an overview of how many films have replacements costs in the following cost ranges

low: 9.99 - 19.99

medium: 20.00 - 24.99

high: 25.00 - 29.99

Question: How many films have a replacement cost in the "low" group?*/

SELECT
CASE	
	WHEN replacement_cost between 9.99 AND 19.99 THEN 'Low'
	WHEN replacement_cost between 20.00 AND 24.99 THen 'Medium'
	ELSE 'high'
END AS category,
count(*)
FROM film
Group by category

/*Task: Create a list of the film titles including their title, length, and category name ordered descendingly by length. Filter the results to only the movies in the category 'Drama' or 'Sports'.

Question: In which category is the longest film and how long is it?*/

SELECT 
title,
length,
c.name
FROM film left join film_category
ON film.film_id=film_category.film_id
left join category as c
ON film_category.category_id = c.category_id
WHERE c.name in ('Drama','Sports')
order by length desc
limit 1;


/*Task: Create an overview of how many movies (titles) there are in each category (name).

Question: Which category (name) is the most common among the films?*/

SELECT
c.name,
count(title) as new
FROM film left join film_category
ON film.film_id = film_category.film_id
left join category as c
ON film_category.category_id = c.category_id
group by c.name
order by new desc
limit 1

/*Task: Create an overview of the actors' first and last names and in how many movies they appear in.

Question: Which actor is part of most movies??
*/

SELECT
first_name,
last_name,
count(title) as most_movies
FROM actor inner join film_actor
ON actor.actor_id = film_actor.actor_id
inner join film 
ON film.film_id = film_actor.film_id
group by first_name,last_name
order by most_movies desc
limit 1;

/*Task: Create an overview of the addresses that are not associated to any customer.

Question: How many addresses are that?*/

SELECT *
FROM address LEFT join customer
ON address.address_id = customer.address_id
WHERE customer_id is null

/*Task: Create the overview of the sales  to determine the from which city 
(we are interested in the city in which the customer lives, not where the store is) most sales occur.
Question: What city is that and how much is the amount?*/

SELECT 
city, sum(p.amount) as total
FROM payment as p left join customer as c
ON p.customer_id = c.customer_id
left join address a
ON a.address_id = c.address_id
left join city cs
ON cs.city_id = a.city_id
group by city
order by total desc
limit 1;



/*Task: Create an overview of the revenue (sum of amount) grouped by a column in the format "country, city".

Question: Which country, city has the least sales?*/

SELECT
country||','||city, sum(amount)
FROM payment as p 
LEFT JOIN customer as c
ON p.customer_id = c.customer_id
LEFT join address as a
ON a.address_id = c.address_id
LEFT JOIN city as ci
ON ci.city_id = a.city_id
Left join country as co
ON co.country_id = ci.country_id
group by country||','||city
order by sum(amount) asc


/*Task: Create a list with the average of the sales amount each staff_id has per customer.

Question: Which staff_id makes on average more revenue per customer?*/

SELECT staff_id, round(avg(avg_amount),2) from
(SELECT 
staff_id,customer_id,sum(amount) as avg_amount from payment
group by staff_id,customer_id) as amt
group by staff_id;


/*Task: Create a query that shows average daily revenue of all Sundays.

Question: What is the daily average revenue of all Sundays?*/


SELECT avg(total) from 
	(SELECT
	extract(DOW from payment_date),
 	date(payment_date)as weekly ,
	sum(amount) as total
	from payment
	WHERE extract(DOW from payment_date)=0
	group by extract(DOW from payment_date),weekly)











