with 
aircrafts as (

    select *
    from {{ source('air_travel_fivetran', 'aircraft_aircraft') }}

)

,aircrafts_renamed as (

    select 
        aircraft_code_
        ,range
        ,model
        ,_fivetran_synced
    from 
        aircrafts
 
)

select * 
from aircrafts_renamed

--let's apply CI/CD
--integrate webhooks for run complete alert