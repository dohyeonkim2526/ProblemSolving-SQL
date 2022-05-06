select A.name as Employee
from Employee A
left join Employee B on A.managerId = B.id # 자기 자신과 (self) left join
where A.salary >= B.salary # manager salary 보다 큰 경우에만 출력
