{{config(materialized='table')}}
select CAST("Store_ID" as INTEGER) as store_id, CAST("Product_ID" as INTEGER) as product_id,"Stock_On_Hand" as stock_on_hand
from {{source('file_source_schema','srcinventory')}}