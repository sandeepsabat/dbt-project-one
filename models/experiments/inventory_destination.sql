{{config(materialized='table')}}
select CAST(store_id as INTEGER),CAST(product_id as INTEGER),stock_on_hand 
from {{source('file_source_schema','srcinventory')}} 
