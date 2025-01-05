select distinct 
staff_id as manager_id,
staff_first_name as manager_first_name,
staff_last_name as manager_last_name
FROM {{ ref('stg_staffs') }}
    WHERE staff_id IN (
            SELECT DISTINCT manager_id
            FROM {{ ref('stg_staffs') }}
            WHERE manager_id IS NOT NULL
        )