BEGIN; --1
UPDATE pizzeria SET rating = 2 WHERE id = 1; -- 3
UPDATE pizzeria SET rating = 4 WHERE id = 2; -- 5
COMMIT; -- 7

BEGIN; -- 2
UPDATE pizzeria SET rating = 3 WHERE id = 2; -- 4
UPDATE pizzeria SET rating = 5 WHERE id = 1; -- 6
COMMIT;	-- 8