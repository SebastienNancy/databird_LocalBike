select
    store_id,
    store_name
from {{source('databird_localbike', 'RAW_stores')}}