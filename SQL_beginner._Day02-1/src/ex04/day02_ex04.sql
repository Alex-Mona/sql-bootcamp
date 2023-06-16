SELECT table_1.pizza_name, table_2.name AS pizzeria_name, table_1.price
  FROM menu table_1
  JOIN pizzeria table_2
    ON table_1.pizzeria_id = table_2.id
 WHERE table_1.pizza_name = 'mushroom pizza'
    OR table_1.pizza_name = 'pepperoni pizza'
 ORDER BY table_1.pizza_name, pizzeria_name;