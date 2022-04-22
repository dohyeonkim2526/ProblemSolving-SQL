# player_id 로 그룹화하여 각 사용자의 방문 일자 확인
# 가장 과거의 방문 일자를 알아야 하므로 min() 함수 활용

select player_id, min(event_date) as 'first_login'
from Activity
group by player_id
order by event_date asc