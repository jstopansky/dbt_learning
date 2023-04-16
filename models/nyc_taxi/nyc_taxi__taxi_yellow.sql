with cte_taxi_yellow as (
    select * 
    from {{ source('nyc_taxi', 'taxi_yellow') }}
)

, final as (
    select *
    from cte_taxi_yellow
)

select *
from final