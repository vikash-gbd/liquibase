--liquibase formatted sql

--changeset ravi:table1-create runOnChange:true
CREATE TABLE DEMO_SCHEMA.table1 (
    id INT PRIMARY KEY,
    name STRING,
    employee STRING,
    created_at TIMESTAMP
);

--changeset ravi:table1-insert runOnChange:true
INSERT INTO DEMO_SCHEMA.table1 (id, name, employee, created_at)
VALUES (2, 'Second Row', 'Ravi', CURRENT_TIMESTAMP);
