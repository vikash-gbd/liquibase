--liquibase formatted sql

--changeset ravi:table1-create runOnChange:true
CREATE TABLE DEMO_SCHEMA.table1 (
    id INT PRIMARY KEY,
    name STRING,
    employee STRING,
    created_at TIMESTAMP_NTZ,
    roll_no   int
);

--changeset ravi:table1-insert runOnChange:true
INSERT INTO DEMO_SCHEMA.table1 (id, name, employee, created_at,roll_no)
VALUES (1, 'Sample Data - updated', 'Vikash', CURRENT_TIMESTAMP,11);
