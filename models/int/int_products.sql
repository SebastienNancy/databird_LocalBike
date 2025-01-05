
SELECT
    p.product_id,
    p.product_name,
    p.model_year,
    p.product_list_price,
    b.brand_name,
    c.category_name
FROM {{ ref('stg_products') }} as p
LEFT JOIN {{ ref('stg_brands') }} as b ON b.brand_id = p.brand_id
LEFT JOIN {{ ref('stg_categories')}} as c ON c.category_id = p.category_id
