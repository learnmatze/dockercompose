use deadlock_compose;

-- Session 1 (Transaction 1)
-- SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
START TRANSACTION;

-- Update the row with ID = 1
UPDATE DeadlockExample
SET Value = 150, Name = 'update by deadlock_first (ID=1)'
WHERE ID = 1;

-- Session 1 (Transaction 1)
-- This will wait for Transaction 2 to release the lock on ID = 2
UPDATE DeadlockExample
SET Value = 200, Name = 'update by deadlock_first (ID=2)'
WHERE ID = 2;

-- Session 1 (Transaction 1)
-- This is where a deadlock occurs
COMMIT;