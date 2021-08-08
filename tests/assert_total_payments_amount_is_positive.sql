select
    order_id,
    sum(amount) as total_amount

from {{ ref('stg_payments') }}

group by order_id

having not(total_amount >= 0)   -- if the order amount is negative, a row will be returned making the test fail