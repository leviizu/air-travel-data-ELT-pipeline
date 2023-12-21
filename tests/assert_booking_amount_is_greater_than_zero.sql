select
book_ref,
  total_amount 
from {{ ref('stg_bookings') }}
where total_amount < 0
group by 1,2