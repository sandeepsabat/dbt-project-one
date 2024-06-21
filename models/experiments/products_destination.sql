{{ config(materialized='table') }}

with products_destination as (
    select CAST("Product_ID" as INTEGER) as product_id,"Product_Name" as product_name,"Product_Category" as product_category,
    CAST(SUBSTRING("Product_Price" FROM 2) as NUMERIC(10,2)) as product_price,SUBSTRING("Product_Price", 1,1) as product_price_currency,
    CAST(SUBSTRING("Product_Cost" FROM 2) as NUMERIC(10,2)) as product_cost, SUBSTRING("Product_Cost", 1,1) as product_cost_currency
    from file_source_schema.srcproducts src
)


select * from products_destination