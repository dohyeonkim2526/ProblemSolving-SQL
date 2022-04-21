# 풀이 순서
# 1. [Employee 테이블] departmentId 그룹별로 가장 큰 급여를 select
# 2. [Employee 테이블] 1번 결과값인 (departmentId, salary)를 포함하는 데이터 select
# 3. [Employee & Department 테이블] 부서별 id를 기준으로 부서의 이름을 함께 가져온다.


SELECT D.name AS 'Department', E.name AS 'Employee', E.salary AS 'Salary'
FROM Employee E
    JOIN Department D
    ON E.departmentId = D.id
WHERE (E.departmentId, E.salary) in (SELECT departmentId, max(salary)
                                     FROM Employee
                                     GROUP BY departmentId)