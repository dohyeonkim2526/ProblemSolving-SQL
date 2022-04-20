# SQL 순위 정렬 3가지
# ROW NUMBER : 중복 허용 없이 순위를 매기는 방식
# DENSE RANK : 동일한 점수는 같은 순위를 매기고, 바로 다음 순위로 넘어간다.
# RANK : 동일한 점수는 같은 순위를 매기고, 한번 건너뛴 다음 순위로 넘어간다.


SELECT score, DENSE_RANK() OVER (ORDER BY score DESC) AS "rank" FROM Scores;