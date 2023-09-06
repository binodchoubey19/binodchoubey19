select * from raw.jaffle_shop.customers
WHERE id >= {{ var('custid', 40)}}