--liquibase formatted sql

--changeset ravi:table1-create runOnChange:true
CREATE TABLE IF NOT EXISTS DEMO_SCHEMA.table1 (
    id INT PRIMARY KEY,
    name STRING,
    employee STRING,
    created_at TIMESTAMP
);

--changeset ravi:table1-insert runOnChange:true
INSERT INTO DEMO_SCHEMA.table1 (id, name, employee, created_at)
VALUES (3, 'Third Row', 'Ravi Singh', CURRENT_TIMESTAMP);

--changeset ravi:table1-add-department runOnChange:true
ALTER TABLE DEMO_SCHEMA.table1 
  ADD COLUMN department STRING;

--changeset ravi:table1-insert-department runOnChange:true
INSERT INTO DEMO_SCHEMA.table1 (id, name, employee, created_at, department)
VALUES (4, 'Fourth Row', 'Ravi Singh', CURRENT_TIMESTAMP, 'Engineering');

