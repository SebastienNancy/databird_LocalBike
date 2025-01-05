select
    staff_id,
    staff_first_name,
    staff_last_name,
    active,
    manager_id
from {{ref('stg_staffs')}}