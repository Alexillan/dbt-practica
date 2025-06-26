

{{ config(materialized='table') }}

with articulos as (

    select *
    from 'proyecto-dbt-463511.Dataset_practica_dbt.Articulos'

)

select *
from 'proyecto-dbt-463511.Dataset_practica_dbt.Articulos'