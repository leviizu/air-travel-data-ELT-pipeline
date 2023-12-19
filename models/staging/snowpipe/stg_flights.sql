with 
flights as (

    select *
    from {{ source('air_travel', 'flights') }}

)

,flights_renamed as (

    select 
         flight_id
        ,flight_no
        ,scheduled_departure
        ,scheduled_arrival           
        ,departure_airport
        ,arrival_airport
        ,status
        ,aircraft_code
        ,actual_departure
        ,actual_arrival
    from 
        flights
 
)

select * 
from flights_renamed