-- Write your query below
SELECT c.customer_id, c.customer_name
from customers c
where c.customer_id IN(
    select customer_id from orders where
    product_name = 'A'
)
AND c.customer_id IN(
    SELECT customer_id from orders where
    product_name = 'B'
)
AND c.customer_id NOT In (
    select customer_id from orders where
    product_name = 'C'
)
order by c.customer_name;