select 
  customer_id, 
  first_name as customer_first_name,
  last_name as customer_last_name
  --phone,
  --email, 
  --street,
  --city,
  --state
from {{ source('databird_localbike', 'RAW_customers') }}