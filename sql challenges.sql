use sakila;
/*1*/
select * from actor;
/*2*/
select * from actor where last_name = 'Neeson';
/*3*/
select * from actor where actor_id%10=0;
/*4*/
select description from film where film_id = 100;
/*1*/
select title from film where rating = 'R';
/*1*/
select title from film where rating <>'R';
/*1*/
select title from film ORDER BY length ASC LIMIT 10;
/*9*/
/*10*/
select title from film where special_features LIKE '%DELETED%';
/*1*/
SELECT * FROM actor GROUP BY last_name HAVING COUNT(last_name) = 1 ORDER BY last_name DESC;
/*1*/
SELECT * FROM actor GROUP BY last_name HAVING COUNT(last_name) > 1 ORDER BY COUNT(last_name) DESC;
/*1*/
SELECT actor_id, COUNT(actor_id) FROM film_actor
GROUP BY actor_id
ORDER BY COUNT(actor_id) DESC LIMIT 1;
/*select actor_id from actor
join film_actor a on a.film_id = film_actor.film_id 
OR use select actor.first_name, actor.last_name, count(film_actor.actor_id) 
from film_actor 
join actor on film_actor.actor_id = actor.actor_id 
group by film_actor.actor_id 
order by count(film_actor.actor_id) desc limit 1;*/
/*1*/
select film.title,rental.return_date 
from film 
join inventory on film.film_id = inventory.film_id 
join rental on rental.inventory_id = inventory.inventory_id 
where title = "ACADEMY DINOSAUR";
/*
SELECT i.film_id, i.inventory_id, return_date
FROM rental c
JOIN inventory i ON i.inventory_id=c.inventory_id
WHERE film_id=(
SELECT film_id
FROM film
WHERE title= "Academy Dinosaur");
SELECT * FROM rental;
*/
/*1*/
select AVG(length) AS 'runtime' from film;
/*1*/
SELECT c.name, AVG(length) FROM film f
JOIN film_category fc ON fc.film_id = f.film_id
JOIN category c on c.category_id = fc.category_id
GROUP BY fc.category_id;
/*1*/
select title from film where description LIKE '%robot%';
/*1*/
select count(film_id) from film where release_year=2010;
/*1*/
select f.title from film f
join film_category fc on fc.film_id = f.film_id
join category c on c.category_id = fc.category_id
where c.name = 'horror';
/*1*/
select concat(first_name, last_name) from staff where staff_id = 2;
/*1*/
select f.title from film f
join film_actor fm on fm.film_id = f.film_id
join actor a on a.actor_id = fm.actor_id
where a.first_name = 'Fred' and a.last_name = 'Costner';
/*1*/
select count(distinct country) from country;
/*1*/
