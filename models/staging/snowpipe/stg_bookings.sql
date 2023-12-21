{{ config(required_tests=None) }}
with 
bookings as (

    select *
    from {{ source('air_travel', 'bookings') }}

)

,bookings_renamed as (

    select 
        book_ref
        ,book_date
        ,total_amount
    from 
        bookings
 
)

select * 
from bookings_renamed