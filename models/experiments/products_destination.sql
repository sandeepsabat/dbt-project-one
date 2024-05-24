{{ config(materialized='table') }}

with products_destination as (
    select CAST(src.product_id as INTEGER),src.product_cost,src.product_name,
    src.product_price,src.product_category
    from file_source_schema.srcproducts src
)


select * from products_destination