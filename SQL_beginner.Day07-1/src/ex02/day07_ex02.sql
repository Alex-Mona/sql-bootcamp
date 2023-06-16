(SELECT pizzeria.name, COUNT(pizzeria.id) AS COUNT, 'order' AS action_type
   FROM pizzeria
   JOIN menu
     ON menu.pizzeria_id = pizzeria.id 
   JOIN person_order
     ON person_order.menu_id = menu.id
  GROUP BY pizzeria.name
  ORDER BY action_type, COUNT DESC LIMIT(3))
UNION ALL
(SELECT pizzeria.name, COUNT(pizzeria.id) AS COUNT, 'visit' AS action_type
   FROM person_visits
   JOIN pizzeria
     ON pizzeria.id = person_visits.pizzeria_id
  GROUP BY pizzeria.name
  ORDER BY action_type, COUNT DESC LIMIT(3));