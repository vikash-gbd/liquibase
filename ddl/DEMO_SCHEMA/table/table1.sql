--liquibase formatted sql

--changeset ravi:table1-create
CREATE TABLE DEMO_SCHEMA.table1 (
    id INT PRIMARY KEY,
    name STRING
);

--changeset ravi:table1-insert
INSERT INTO DEMO_SCHEMA.table1 (id, name) VALUES (1, 'Sample Data');
