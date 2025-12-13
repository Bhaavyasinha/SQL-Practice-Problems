select u.name, sum(amount) as balance 
from transactions t
inner join users u
on t.account = u.account
group by u.name
having sum(amount) > 10000
