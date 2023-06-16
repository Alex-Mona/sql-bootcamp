SELECT DISTINCT pizzeria.name pizzeria_name
  FROM person
  JOIN person_order
    ON person.id = person_order.person_id
  JOIN person_visits
    ON person.id = person_visits.person_id
  JOIN pizzeria
    ON person_visits.pizzeria_id = pizzeria.id
 WHERE person.name  = 'Andrey'
   AND person_visits.visit_date != person_order.order_date;