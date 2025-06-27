{{

    config(
        materialized = 'table'
    )

}}


with dim_club_memmber_status as (

    select  *   from {{ ref ('stg_dim_club_memmber_status')}}
    
)

dim_costumer_age as (

    select *  from {{ ref ('stg_dim_club_memmber_status')}}

) 

select * from 'proyecto-dbt-463511.Dataset_practica_dbt.Clientes'