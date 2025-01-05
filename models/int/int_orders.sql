select
    stg_order_items.order_id,
    item_id,    
    product_id,
    order_quantity,
    order_list_price,
    order_discount,
    customer_id,
    order_status,
    order_date,
    required_date,
    shipped_date,
    store_id,
    staff_id
from {{ref('stg_order_items')}}
left join {{ ref('stg_orders') }} ON stg_order_items.order_id = stg_orders.order_id 