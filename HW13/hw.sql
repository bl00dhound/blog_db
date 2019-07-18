-- #1
select film_id,
      title,
      description,
      release_year,
      row_number() over (partition by substring(title, 0, 2) order by title asc) first_letter_rank,
      count(1) over () as common_count,
      count(1) over (partition by substring(title, 0, 2)) by_first_letter_count,
      lead(film_id, 1) over() as next_film_id,
      lag(film_id, 1) over() as previous_film_id,
      lag(title, 2) over() as title_two_rows_ago
from film
order by title asc

-- #2
select row_number() over (),
      rating,
      json_agg(json_build_object(
				'film_id', film_id,
				'title', title,
				'durations', length
				) order by length asc) as films
from film
group by rating
order by rating asc;

-- #3
select distinct st.staff_id,
      st.first_name as staff_first_name,
      st.last_name as staff_last_name,
      first_value(c.customer_id) over (partition by st.staff_id order by r.rental_date desc) as customer_id,
      first_value(c.first_name) over (partition by st.staff_id order by r.rental_date desc) as customer_first_name,
      first_value(c.last_name) over (partition by st.staff_id order by r.rental_date desc) as customer_last_name,
      first_value(r.rental_date) over (partition by  st.staff_id order by r.rental_date desc) as rental_date
from rental r
left join staff st on r.staff_id = st.staff_id
left join customer c on r.customer_id = c.customer_id;

-------------------------------

with groupped_payments as (
  select r.customer_id,
        r.staff_id,
        max(r.rental_date) as rental_date
  from rental r
  group by customer_id, staff_id
  order by rental_date desc
)
select st.staff_id,
      st.first_name as staff_first_name,
      st.last_name as staff_last_name,
      c.customer_id,
      c.first_name as customer_first_name,
      c.last_name as customer_last_name,
      gp.rental_date as rental_date
from groupped_payments gp
left join customer c on gp.customer_id = c.customer_id
left join staff st on gp.staff_id = st.staff_id
limit (select count(1) from staff);

-- #4
select distinct first_value(fa.actor_id) over (partition by fa.actor_id order by r.rental_date desc) actor_id,
      first_value(a.first_name || ' ' || a.last_name) over (partition by fa.actor_id order by r.rental_date desc) as actor_name,
      first_value(i.film_id) over (partition by fa.actor_id order by r.rental_date desc) film_id,
      first_value(f.title) over (partition by fa.actor_id order by r.rental_date desc) film_title,
      first_value(r.rental_date) over (partition by fa.actor_id order by r.rental_date desc) rental_date
from rental r
left join inventory i on i.inventory_id = r.inventory_id
left join film f on i.film_id = f.film_id
left join film_actor fa on f.film_id = fa.film_id
left join actor a on a.actor_id = fa.actor_id;

------------------------------------

with grouping_by_actor_and_film as (
    select fa.actor_id,
          a.first_name || ' ' || a.last_name as actor_name,
          i.film_id,
          f.title as film_title,
          max(r.rental_date) as last_date
    from rental r
    left join inventory i on i.inventory_id = r.inventory_id
    left join film f on i.film_id = f.film_id
    left join film_actor fa on f.film_id = fa.film_id
    left join actor a on a.actor_id = fa.actor_id
    group by 1, 2, 3, 4
), grouping_by_actor as (
  select actor_id,
        actor_name,
        json_agg(json_build_object(
					'film_id', film_id,
					'film_title', film_title,
					'rental_date', last_date
					) order by last_date desc) as films,
        max(last_date) as last_date
  from grouping_by_actor_and_film
  group by 1, 2
)

select actor_id,
      actor_name,
      films::json #> '{0,film_id}' as film_id,
      films::json #> '{0,film_title}' as film_title,
      last_date as rental_date
from grouping_by_actor

