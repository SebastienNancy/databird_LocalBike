select 
    brand_id,
    brand_name
from {{ source('databird_LocalBike', 'RAW_brands') }}