SELECT table_1.name, table_1.rating
  FROM person_visits pv
 RIGHT JOIN pizzeria table_1
	ON pizzeria_id = table_1.id
 WHERE pv.pizzeria_id IS NULL;