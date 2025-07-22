--liquibase formatted sql

--changeset auto:5
--preconditions onFail:MARK_RAN
--precondition-sql-check expectedResult:0 SELECT COUNT(*) FROM sales_db.information_schema.tables WHERE table_schema='CUSTOMER_SCHEMA' AND table_name='DOCTOR_TABLE'

CREATE OR REPLACE TABLE sales_db.customer_schema.doctor_table (
  id   INT,
  name STRING
);
