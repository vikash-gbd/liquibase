--liquibase formatted sql

--changeset ravi:table1-create
CREATE TABLE IF NOT EXISTS DEMO_SCHEMA.table1 (
    id INT PRIMARY KEY,
    name STRING,
    employee STRING,
    location STRING  -- new column
);

--changeset ravi:table1-insert
INSERT INTO DEMO_SCHEMA.table1 (id, name, employee, location)
VALUES (1, 'Sample Data', 'vikash', 'Bangalore');
