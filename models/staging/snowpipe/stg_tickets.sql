with 
tickets as (

    select *
    from {{ source('air_travel', 'tickets') }}

)

,tickets_renamed as (

    select 
        ticket_no
        ,passenger_id
        ,passenger_name
        ,book_ref
    from 
        tickets
 
)

select * 
from tickets_renamed