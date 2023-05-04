-- List all customers who live in texas using joins
SELECT first_name, last_name
FROM customer;

SELECT first_name, last_name, district
FROM customer AS cu
JOIN address AS a
ON cu.address_id = a.address_id
WHERE district = 'Texas';

-- Get all payments above 6.99 with the customers full name
SELECT first_name, last_name
FROM customer;

SELECT first_name, last_name, amount
FROM customer AS cu
JOIN payment AS p 
ON cu.payment_id = p.payment_id
WHERE amount > 6.99;



-- Show all customers name who have made payments over 175 using subqueries
SELECT *
FROM payment;

SELECT first_name, last_name
FROM customer
WHERE customer_id IN (
	SELECT customer_id 
	FROM payment
	GROUP BY customer_id
	HAVING SUM(amount) > 175
);


-- List all customer that live in nepal

SELECT first_name, last_name, country
FROM customer AS cu
JOIN address AS a
ON cu.address_id = a.address_id
JOIN city AS ci 
ON ci.city_id = a.city_id
JOIN country AS coun
ON coun.country_id = ci.country_id
WHERE country = 'Texas';
--Why isnt this displaying any data????



-- Which staff member had the most transactions



-- How many movies of each rating are there?



-- SHow all customers who have made a single payment above 6.99 subqueries



-- How many free rentals did our stores give away?