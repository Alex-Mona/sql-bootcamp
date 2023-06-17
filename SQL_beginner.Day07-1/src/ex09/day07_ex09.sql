WITH type_transformation AS
(SELECT person.address, 
        ROUND(MAX(person.age)::numeric - (MIN(person.age)::numeric / MAX(age)::numeric), 2) AS formula, 
		ROUND(AVG(person.age), 2) AS average
   FROM person
  GROUP BY person.address)
 SELECT type_transformation.address, type_transformation.formula, type_transformation.average,
   CASE 
   WHEN type_transformation.formula > type_transformation.average
   THEN 'true'
   ELSE 'false'
    END AS comparison
   FROM type_transformation
  ORDER BY type_transformation.address;