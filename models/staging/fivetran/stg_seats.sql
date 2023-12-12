with 
seats as (

    select *
    from {{ source('air_travel_fivetran', 'seats_seats') }}

)

,seats_renamed as (

    select 
      aircraft_code
      ,seat_no
      ,fare_conditions
      ,_fivetran_synced
    from 
        seats
 
)

select * 
from seats_renamed