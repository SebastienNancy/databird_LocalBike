select 
    category_id, 
    category_name
from {{ source('databird_localbike', 'RAW_categories') }}