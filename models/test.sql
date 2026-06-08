
  select customer_id, sum(order_amount) as revenue from public.transactions group by customer_id 