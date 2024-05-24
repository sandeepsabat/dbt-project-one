{{config(materialized='table')}}
 with sales_destination as (
    select sales.date as date, sales.units as units, sales.sale_id as sales_id, sales.store_id as store_id, sales.product_id as product_id
    from file_source_schema.srcsales as sales
 )

 select * from sales_destination