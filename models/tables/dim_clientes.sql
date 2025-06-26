{{

    config(
        materialized = 'table'
    )

}}


with dim_club_memmber_status as (
    select  
        customer_id,
        case 
            when club_member_status = 1 then "ACTIVE"
            when club_member_status = 2 then "SIN ESTATUS"
            when club_member_status = 3 then "PRE-CREATE"
            when club_member_status = 4 then "LEFT CLUB"
            when club_member_status = 5 then "Unknown"
        end as club_member_status

    from {{ ref ('clientes')}}
)

dim_costumer_age as (
    select
        age,
        case 
            when age < 18 then "<18"
            when age between 18 AND 30 THEN ">= 18 y < 30"
            when age between 30 AND 50 THEN ">= 31 y < 50"
            when age between 50 AND 65 THEN ">= 51 y < 65"
            when age >= 65 THEN ">=65"
        end as age
    
    from 'proyecto-dbt-463511.Dataset_practica_dbt.Clientes'
) 