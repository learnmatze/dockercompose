truncate DeadlockExample;

drop table DeadlockExample;

-- CREATE TABLE statement
CREATE TABLE DeadlockExample (
    ID INT PRIMARY KEY,
    Value INT,
    Name varchar(255)
);

-- INSERT statement for initial data
INSERT INTO DeadlockExample (ID, Value, Name)
VALUES
    (1, 100, 'initial value 100'),
    (2, 200, 'initial value 200');

select * from DeadlockExample