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