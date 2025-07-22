--liquibase formatted sql
--changeset auto:5 
--preconditions onFail:WARN 
--precondition-sql-check expectedResult:0 SELECT COUNT(*) FROM example_table
--comment: /* Comments should go after the precondition. Otherwise, Liquibase returns an error. */

CREATE OR REPLACE TABLE sales_db.customer_schema.doctor_table( 
  id INT,
  name STRING
);