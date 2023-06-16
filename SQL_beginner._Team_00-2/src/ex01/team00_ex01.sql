WITH RECURSIVE traces AS
  (SELECT point1::VARCHAR AS tour,
          point1,
          point2,
          cost
   FROM roads
   WHERE point1 = 'a'
   UNION ALL
   SELECT parrent.tour || ',' || child.point1 AS trace,
                    child.point1,
                    child.point2,
                    parrent.cost + child.cost
   FROM roads AS child
   INNER JOIN traces AS parrent ON child.point1 = parrent.point2
   WHERE tour NOT LIKE '%' || child.point1 || '%')
SELECT cost total_cost,
       format('{%s,%s}', tour, point2) AS tour
FROM traces
WHERE point2 = 'a'
  AND LENGTH(tour) = 7
  AND cost >=
    (SELECT MIN(cost)
     FROM traces
     WHERE point2 = 'a'
       AND LENGTH(tour) = 7)
ORDER BY total_cost, tour;