{{

    config(
        materialized = 'table'
    )

}}

with dim_zip_grouped as (
    (SELECT
        lat,
        lng,
        city,
        state_id,
        state_name,
        zip_code,
        ntile(33788)  over (order by zip_code) ranking_zip
        FROM 'proyecto-dbt-463511.Dataset_practica_dbt.Uszips2'),
        hashes as
        (select postal_code,
        ntile(33788)  over (order by postal_code) ranking_hash 
        from (
        SELECT distinct postal_code FROM 'proyecto-dbt-463511.Dataset_practica_dbt.Clientes' )
        )
        select zip_code, postal_code, lat, lng, city, state_id, state_name
        from zips join hashes on (zips.ranking_zip = hashes.ranking_hash)
    )

dim_zip_distinct as (
    (SELECT DISTINCT
        lat,
        lng,
        city,
        state_id,
        state_name,
        zip_code
        from 'dim_zip_grouped')
        select * from zip

)