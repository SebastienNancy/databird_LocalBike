SELECT
    product_id,
    product_name,
    model_year,
    product_list_price,
    brand_name,
    category_name
FROM {{ ref('int_products') }} 
