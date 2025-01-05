select
    order_id,
    item_id,
    product_id,
    quantity as order_quantity,
    list_price as order_list_price,
    discount  as order_discount
from {{source('databird_localbike','RAW_order_items')}}