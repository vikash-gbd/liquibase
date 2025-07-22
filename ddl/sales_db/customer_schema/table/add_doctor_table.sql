--liquibase formatted sql

--changeset auto:5
--preconditions onFail:MARK_RAN
--precondition-table-exists tableName=DOCTOR_TABLE schemaName=CUSTOMER_SCHEMA

CREATE OR REPLACE TABLE sales_db.customer_schema.doctor_table (
  id   INT,
  name STRING
);
