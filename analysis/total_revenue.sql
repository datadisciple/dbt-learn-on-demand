select
    sum(p.amount) as total_revenue    
from {{ ref('stg_payments') }} p
where p.status = 'success'