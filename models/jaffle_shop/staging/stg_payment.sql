{{ config(materialized='table') }}
with stg_payments as (
    select *,{{cents_to_dollars('amount')}} as amount_usd from raw.stripe.payment
)
select *
from stg_payments