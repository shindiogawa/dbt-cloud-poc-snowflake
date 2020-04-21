with data as (
    select * from {{ref('raw_supplier')}}
),
validation as (
    select  count(*) cnt,  
            s_suppkey
    from data group by S_SUPPKEY having count(s_suppkey) > 1
)

select * from validation