CREATE OR REPLACE TABLE sales_db.customer_schema.customer_table (
  id INT,
  name STRING
);

INSERT INTO sales_db.customer_schema.customer_table (id, name) VALUES
  (1, 'Alice'),
  (2, 'Bob'),
  (3, 'Charlie');
