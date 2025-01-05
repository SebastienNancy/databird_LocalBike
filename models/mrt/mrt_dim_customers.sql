select 
  customer_id, 
  customer_first_name,
  customer_last_name
from {{ ref('stg_customers') }}