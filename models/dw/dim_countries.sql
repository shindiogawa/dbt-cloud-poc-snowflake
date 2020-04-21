  
{{ 
    config(
        materialized='table',
        tags=['dw', 'dim']
    ) 
}}

select
    country,
    name,
    latitude,
    longitude 
from 
{{ ref('stg_countries') }}