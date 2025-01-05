select
    store_id,
    store_name
from {{ref('stg_stores')}}