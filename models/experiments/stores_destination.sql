{{ config(materialized='table') }}
select CAST(store_id as INTEGER),store_city,store_name,store_location,CAST(store_open_date as DATE)
from {{source('file_source_schema','srcstores')}}