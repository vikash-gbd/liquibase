--liquibase formatted sql

--changeset auto:2

CREATE OR REPLACE TABLE sales_db.customer_schema.customer_table (
  id INT,
  name STRING
);


--changeset auto:3

ALTER TABLE sales_db.customer_schema.customer_table ADD COLUMN created_at TIMESTAMP_NTZ;




--changeset auto:4
--preconditions onFail:WARN 
--precondition-sql-check expectedResult:0 SELECT COUNT(*) FROM example_table
--comment: /* Comments should go after the precondition. Otherwise, Liquibase returns an error. */

CREATE OR REPLACE TABLE sales_db.customer_schema.patient_table (
  id INT,
  name STRING
);
