{{config(materialized='table')}}
 with sales_destination as (
    select CAST(sales.date as DATE), sales.units, CAST(sales.sale_id as INTEGER), CAST(sales.store_id as INTEGER), CAST(sales.product_id as INTEGER)
    from file_source_schema.srcsales as sales
 )

 select * from sales_destination