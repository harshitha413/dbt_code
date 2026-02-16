select *
from {{ source('datafeed_shared_schema','customers') }}
where spent < 0
