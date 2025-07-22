--liquibase formatted sql

--changeset auto:2

CREATE OR REPLACE TABLE sales_db.customer_schema.customer_table (
  id INT,
  name STRING
);


--changeset auto:3

ALTER TABLE sales_db.customer_schema.customer_table ADD COLUMN created_at TIMESTAMP_NTZ;