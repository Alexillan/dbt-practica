with clientes as (
    select * from {{ ref ('clientes')}}
)