 select
    'orders' as fact_type,
    order_id,
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
    staff_id,
    amount,
    NULL as stock_quanity
from {{ref('int_orders')}}

UNION ALL

select
    'stocks' as fact_type,
    NULL as order_id,
    NULL asitem_id,    
    product_id,
    NULL as order_quantity,
    NULL as order_list_price,
    NULL as order_discount,
    NULL as customer_id,
    NULL as order_status,
    NULL as order_date,
    NULL as required_date,
    NULL as shipped_date,
    store_id,
    NULL as staff_id,
    NULL as amount,
    stock_quanity
from {{ref('stg_stocks')}}
