with 
airports as (

    select *
    from {{ source('air_travel_fivetran', 'airport_data_airport') }}

)

,airports_renamed as (

    select 
      airport_name    
      ,city    
      ,timezone
      ,airport_code
      ,coordinates
      ,_fivetran_synced
    from 
        airports
 
)

select * 
from airports_renamed