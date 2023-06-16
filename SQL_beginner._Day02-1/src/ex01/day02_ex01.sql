SELECT dates::date AS missing_date
  FROM GENERATE_SERIES('2022-01-01', '2022-01-10', interval '1 day') dates
       LEFT JOIN
       (SELECT visit_date
          FROM person_visits
         WHERE (person_id = 1 OR person_id = 2)
	       AND visit_date BETWEEN '2022-01-01' AND '2022-01-10') AS table_1
            ON dates = table_1.visit_date
         WHERE table_1.visit_date IS NULL
 ORDER BY missing_date ASC;