SELECT DISTINCT person.name
  FROM menu
  JOIN person_order 
    ON person_order.menu_id = menu.id
  JOIN person
    ON person.id = person_order.person_id
 WHERE person.gender = 'female'
   AND person.id IN (SELECT person_id
					   FROM person_order
                       JOIN menu
                         ON person_order.menu_id = menu.id
                      WHERE pizza_name = 'pepperoni pizza')
   AND person.id IN (SELECT person_id
					   FROM person_order
                       JOIN menu
                         ON person_order.menu_id = menu.id
                      WHERE pizza_name = 'cheese pizza')
ORDER BY name;