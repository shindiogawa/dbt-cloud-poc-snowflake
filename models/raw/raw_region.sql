select *
from {{ source('sf_sample_data', 'region')}}