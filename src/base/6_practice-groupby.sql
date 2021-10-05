-- Ex15
select paid, count(*)
from orders
group by paid

-- Ex 16
select first_name, last_name, paid
from users
join orders on users.id = orders.user_id
