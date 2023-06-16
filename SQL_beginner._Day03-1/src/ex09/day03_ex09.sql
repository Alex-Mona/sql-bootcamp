INSERT INTO person_visits
VALUES ((SELECT MAX(pv.id + 1)
		   FROM person_visits pv),
		        (SELECT p.id
				   FROM person p
				  WHERE p.name = 'Denis'),
		                (SELECT pizzeria.id
		                   FROM pizzeria
		                  WHERE pizzeria.name = 'Dominos'), '2022-02-24'),
		((SELECT MAX(pv.id + 2)
		    FROM person_visits pv),
		         (SELECT p.id
				    FROM person p
				   WHERE p.name = 'Irina'),
		                (SELECT pizzeria.id
		                   FROM pizzeria
		                  WHERE pizzeria.name = 'Dominos'), '2022-02-24');