--liquibase formatted sql

--changeset auto:2

CREATE OR REPLACE TABLE sales_db.customer_schema.customer_table (
  id INT,
  name STRING
);


--changeset auto:3

ALTER TABLE sales_db.customer_schema.customer_table ADD COLUMN created_at TIMESTAMP_NTZ;




--changeset auto:4
--preconditions onFail:MARK_RAN
--precondition-sql-check expectedResult:0 
  SELECT COUNT(*) 
  FROM information_schema.tables 
  WHERE table_schema = 'CUSTOMER_SCHEMA' 
    AND table_name = 'PATIENT_TABLE'

CREATE OR REPLACE TABLE sales_db.customer_schema.patient_table (
  id INT,
  name STRING
);
