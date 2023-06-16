INSERT INTO person_order (id, person_id, menu_id, order_date)
SELECT gs AS id,
	   id AS person_id,
	         (SELECT id
			    FROM menu
			   WHERE pizza_name = 'greek pizza') AS menu_id, '2022-02-25' AS order_date
	            FROM generate_series
				     ((SELECT MAX(id) + 1
						 FROM person_order),
					          (SELECT MAX(id)
								 FROM person_order) +
					                  (SELECT MAX(id)
										 FROM person)) gs
  JOIN person
    ON person.id + (SELECT MAX(id)
					  FROM person_order) = gs;