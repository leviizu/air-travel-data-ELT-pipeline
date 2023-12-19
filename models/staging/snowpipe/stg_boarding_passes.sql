with 
boarding_passes as (

    select *
    from {{ source('air_travel', 'boarding_passes') }}

)

,boarding_passes_renamed as (

    select 
        ticket_no,
        flight_id, 
        boarding_no,
        seat_no
    from 
        boarding_passes
 
)

select * 
from boarding_passes_renamed