INSERT INTO menu
VALUES ((SELECT MAX(m.id + 1)
		   FROM menu m), 
		        (SELECT pizzeria.id
		           FROM pizzeria
		          WHERE pizzeria.name = 'Dominos'), 'sicilian pizza', 900);