{{config(materialized='table')}}
 with sales_destination as (
    select CAST("Date" as DATE) as date, CAST("Units" as INTEGER) as units, CAST("Sale_ID" as INTEGER) as sale_id, CAST("Store_ID" as INTEGER) as store_id, CAST("Product_ID" as INTEGER) as product_id
    from file_source_schema.srcsales as sales
 )

 select * from sales_destination