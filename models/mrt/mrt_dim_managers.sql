select  
manager_id,
manager_first_name,
manager_last_name
FROM {{ ref('int_managers') }}
