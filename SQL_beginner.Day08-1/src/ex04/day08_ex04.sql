BEGIN; -- 1
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE; -- 3
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; -- 5
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; -- 8
COMMIT; -- 9
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; -- 10

BEGIN; -- 2
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE; -- 4
UPDATE pizzeria SET rating = 3.0 WHERE name = 'Pizza Hut'; -- 6
COMMIT;	-- 7
SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; -- 11