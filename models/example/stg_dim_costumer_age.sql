select  
    customer_id,
        age,
        case 
            when age < 18 then "<18"
            when age between 18 AND 30 THEN ">= 18 y < 30"
            when age between 30 AND 50 THEN ">= 31 y < 50"
            when age between 50 AND 65 THEN ">= 51 y < 65"
            when age >= 65 THEN ">=65"
        end as age
from proyecto-dbt-463511.Dataset_practica_dbt.Clientes