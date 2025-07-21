--liquibase formatted sql

--changeset ravi:table1-create
CREATE TABLE IF NOT EXISTS DEMO_SCHEMA.table1 (
    id INT PRIMARY KEY,
    name STRING,
    employee STRING,
    department STRING
);

--changeset ravi:table1-insert
INSERT INTO DEMO_SCHEMA.table1 (id, name, employee, created_at) 
VALUES (1, 'Sample Data', 'Vikash', "it");
