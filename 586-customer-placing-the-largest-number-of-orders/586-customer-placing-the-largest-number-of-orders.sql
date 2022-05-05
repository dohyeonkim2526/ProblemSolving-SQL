select customer_number
from Orders
group by customer_number # 각 customer 번호를 기준으로 그룹
order by count(*) desc
limit 1 # 가장 많은 횟수를 가진 customer_number 반환