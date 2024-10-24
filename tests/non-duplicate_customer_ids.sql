select customer_id, count(customer_id)
from {{ ref('stg_customers') }}
group by customer_id
having count(customer_id) > 1