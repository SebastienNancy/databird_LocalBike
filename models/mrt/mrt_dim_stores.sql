select
    store_id,
    store_name as Store
from {{ref('stg_stores')}}