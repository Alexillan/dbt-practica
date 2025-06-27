
select  
    customer_id,
    case 
        when club_member_status = 1 then "ACTIVE"
        when club_member_status = 2 then "SIN ESTATUS"
        when club_member_status = 3 then "PRE-CREATE"
        when club_member_status = 4 then "LEFT CLUB"
        when club_member_status = 5 then "Unknown"
    end as club_member_status

from proyecto-dbt-463511.Dataset_practica_dbt.Clientes