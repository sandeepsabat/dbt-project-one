{{ config(materialized='table') }}

with products_destination as (
    select CAST(src.product_id as INTEGER),src.product_name,src.product_category,
    CAST(SUBSTRING(src.product_price FROM 2) as NUMERIC(10,2)) as product_price,SUBSTRING(src.product_price, 1,1) as product_price_currency,
    CAST(SUBSTRING(src.product_cost FROM 2) as NUMERIC(10,2)) as product_cost, SUBSTRING(src.product_cost, 1,1) as product_cost_currenct
    from file_source_schema.srcproducts src
)


select * from products_destination