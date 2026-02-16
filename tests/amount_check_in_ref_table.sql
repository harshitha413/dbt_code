select *
from {{ ref('snap_customers_timestamp') }}
where spent < 0
