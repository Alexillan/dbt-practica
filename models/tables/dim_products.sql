{{

    config(
        materialized = 'table'
    )

}}

with product_type as (
    select
        product_type_no,
        product_type_name

    from  'proyecto-dbt-463511.Dataset_practica_dbt.Articulos'

),

indexes as (
    select
        index_group_no,
        index_group_name,
        index_code,
        index_name

    from 'proyecto-dbt-463511.Dataset_practica_dbt.Articulos'

),

products as (
    select
        product_code
        min(product_name)

    from 'proyecto-dbt-463511.Dataset_practica_dbt.Articulos'
),

sales_channel as (
    select
        sales_channel_id,
        case 
            when sales_channel_id = 1 then "Online"
            when sales_channel_id = 2 then "Tienda"
            when sales_channel_id = -1 then "Unknown"
        end as sales_channel
    from 'proyecto-dbt-463511.Dataset_practica_dbt.Transacciones'
),

section_department as (
    select
        section_no,
        section_name,
        department_no,
        department_name
    from 'proyecto-dbt-463511.Dataset_practica_dbt.Articulos'

)