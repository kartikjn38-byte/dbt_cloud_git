{{
    config(
        materialized = 'table'
    )
}}

with source as (

    select
        order_id,
        customer_id,
        order_date,
        upper(order_status)       as order_status,
        product_name,
        quantity,
        unit_price,
        total_amount,
        upper(payment_method)     as payment_method,
        city
    from dbt_cloud.raw.orders

),

final as (

    select
        order_id,
        customer_id,
        order_date,
        order_status,
        product_name,
        quantity,
        unit_price,
        total_amount,
        payment_method,
        city,

        -- derived fields
        case 
            when order_status = 'DELIVERED' then 1 
            else 0 
        end as is_delivered,

        date_trunc('month', order_date) as order_month

    from source
)

select * from final
