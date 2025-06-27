{{

    config(
        materialized = 'table'
    )

}}


with fct_sales as (
    select 
        t_dat,
        extract(month from t_dat) as month,
        extract(year from t_dat) as year,
        customer_id,
        article_id,
        sales_channel_id,
        price
    
    from 'proyecto-dbt-463511.Dataset_practica_dbt.Transacciones'
    join 'proyecto-dbt-463511.Dataset_practica_dbt.Clientes' on (proyecto-dbt-463511.Dataset_practica_dbt.Transacciones.customer_id = proyecto-dbt-463511.Dataset_practica_dbt.Clientes.customer.id)
    join 'proyecto-dbt-463511.Dataset_practica_dbt.Articulos' on (proyecto-dbt-463511.Dataset_practica_dbt.Transacciones.article_id = proyecto-dbt-463511.Dataset_practica_dbt.Articulos.article.id)
)