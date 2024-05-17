{{ config(materialized='table') }}

with products_destination as (
    select src.Product_ID as productId,src.Product_Cost as product_cost,src.Product_Name as product_name,
    src.Product_Price as product_price,src.Product_Category as product_category
    from file_source_schema.srcproducts src
)


select * from products_destination