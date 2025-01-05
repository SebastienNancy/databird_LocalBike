select
    store_id,
    product_id,
    quantity as stock_quanity
from {{source('databird_localbike','RAW_stocks')}}