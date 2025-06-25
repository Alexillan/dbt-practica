with transacciones as (
    select * from {{ ref ('transacciones')}}
)