BEGIN; -- 1
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ; -- 3
SELECT SUM(rating) FROM; -- 5 
SELECT SUM(rating) FROM; -- 8
COMMIT; -- 9
SELECT SUM(rating) FROM; -- 10

BEGIN; -- 2
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ; -- 4
UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut'; -- 6
COMMIT;	-- 7
SELECT SUM(rating) FROM; -- 11