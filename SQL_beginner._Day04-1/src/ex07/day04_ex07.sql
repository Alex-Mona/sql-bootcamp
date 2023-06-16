INSERT INTO person_visits (id, person_id, pizzeria_id, visit_date)
SELECT MAX(id) + 1 AS id, 
	   (SELECT id
		  FROM person 
	   	 WHERE name = 'Dmitriy') AS person_id,
               (SELECT id
				  FROM pizzeria
	   			 WHERE name != 'Papa Johns'
	   			   AND id IN
			   (SELECT pizzeria_id
				  FROM menu
	   			 WHERE price < 800) LIMIT 1) AS pizzeria_id, '2022-01-08' AS visit_date
FROM person_visits;
REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;