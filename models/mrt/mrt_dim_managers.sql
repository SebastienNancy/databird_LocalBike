select  
manager_id,
  UPPER(manager_first_name) || ' ' || manager_last_name as Manager
FROM {{ ref('int_managers') }}
