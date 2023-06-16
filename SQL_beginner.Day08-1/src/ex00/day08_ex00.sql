BEGIN; -- 1
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; -- 3
UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut'; -- 5
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; -- 7
COMMIT; -- 8

BEGIN; -- 2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; -- 4
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; -- 6
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; -- 9