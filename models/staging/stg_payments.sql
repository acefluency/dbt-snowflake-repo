with
    raw_payment as (
        select * from {{ source("Snowflake_Source", "raw_payments") }}
        ),
    final as (
        select id as payment_id, order_id,payment_method, amount from raw_payment
        )
select *
from final