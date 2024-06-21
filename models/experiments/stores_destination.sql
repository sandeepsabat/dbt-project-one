{{ config(materialized='table') }}
select CAST("Store_ID" as INTEGER) as store_id,"Store_City" as store_city,"Store_Name" as store_name,"Store_Location" as store_location,CAST("Store_Open_Date" as DATE) as store_open_date
from {{source('file_source_schema','srcstores')}}