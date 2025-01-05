select
    product_id,
    product_name,
    brand_id,
    category_id,
    model_year,
    list_price as product_list_price
from {{ source('databird_localbike', 'RAW_products')}}