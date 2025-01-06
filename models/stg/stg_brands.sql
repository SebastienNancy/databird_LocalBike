select 
    brand_id,
 --   1 as test,
    brand_name
from {{ source('databird_localbike', 'RAW_brands') }}