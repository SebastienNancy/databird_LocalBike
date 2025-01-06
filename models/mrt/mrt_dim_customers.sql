select 
  customer_id, 
  UPPER(customer_first_name) || ' ' || customer_last_name as Customer
from {{ ref('stg_customers') }}