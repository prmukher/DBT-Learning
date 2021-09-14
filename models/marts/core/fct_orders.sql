with stg_orders as (
    select * from {{ ref('stg_orders')}}
),

stg_payments as (
    select * from {{ ref('stg_payments')}}
),


final as (
SELECT 
    stg_orders.order_id,
    stg_orders.customer_id,
    stg_payments.AMOUNT

FROM stg_orders inner join stg_payments
on stg_orders.order_id = stg_payments.order_id
--using (ORDER_ID)
)

select * from final
 