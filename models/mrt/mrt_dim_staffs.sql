select
    staff_id,
    UPPER(staff_first_name) || ' ' || staff_last_name as Staff
    active,
    manager_id
from {{ref('stg_staffs')}}