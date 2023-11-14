use deadlock_compose;

-- Session 2 (Transaction 2)
-- SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
START TRANSACTION;

-- Update the row with ID = 2
UPDATE DeadlockExample
SET Value = 260, Name = 'update by deadlock_second (ID=2)'
WHERE ID = 2;

-- Session 2 (Transaction 2)
-- This will wait for Transaction 1 to release the lock on ID = 1
UPDATE DeadlockExample
SET Value = 110, Name = 'update by deadlock_second (ID=1)'
WHERE ID = 1;

-- Session 2 (Transaction 2)
-- This is where a deadlock occurs
COMMIT;