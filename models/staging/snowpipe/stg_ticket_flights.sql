{{ config(required_tests=None) }}
with 
ticket_flights as (

    select *
    from {{ source('air_travel', 'ticket_flights') }}

)

,ticket_flights_renamed as (

    select 
       ticket_no   
      ,flight_id         
      ,fare_conditions     
      ,amount
    from 
        ticket_flights
 
)

select * 
from ticket_flights_renamed