{{ 
    config(
        materialized='table',
        tags=['dw', 'fct']
    ) 
}}

select
  ps_partsuppkey,
  ps_partkey,
  ps_suppkey,
  ps_availqty,
  ps_supplycost,
  ps_comment
from {{ ref('stg_partsupp') }}