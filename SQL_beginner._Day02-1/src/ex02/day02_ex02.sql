SELECT CASE
	   WHEN person.name IS NULL THEN '-'
       ELSE person.name
	    END person_name, table_1.visit_date AS visit_date,
	   CASE
	   WHEN pizzeria.name IS NULL THEN '-'
       ELSE pizzeria.name
	    END pizzeria_name
  FROM person
  FULL JOIN 
       (SELECT *
          FROM person_visits
         WHERE visit_date BETWEEN '2022-01-01'
           AND '2022-01-03') AS table_1
            ON person.id = table_1.person_id
  FULL JOIN pizzeria
         ON pizzeria.id = table_1.pizzeria_id
 ORDER BY person_name, visit_date, pizzeria_name;