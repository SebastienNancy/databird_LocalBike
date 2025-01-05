select
    staff_id,
    first_name as staff_first_name,
    last_name as staff_last_name,
    --email,
    --phone,
    active,
    --store_id,
    SAFE_CAST(manager_id AS INT) as manager_id
from {{source('databird_localbike', 'RAW_staffs')}}