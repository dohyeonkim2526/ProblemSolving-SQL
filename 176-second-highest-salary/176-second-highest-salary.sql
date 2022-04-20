# https://hkim-data.tistory.com/20
# LIMIT ~ OFFSET
# LIMIT : 몇 개의 데이터를 불러올 것인지
# OFFSET : 몇 번째 데이터부터 불러올 것인지


SELECT IFNULL((SELECT DISTINCT salary from Employee
               ORDER BY salary DESC
               LIMIT 1 OFFSET 1), NULL) AS SecondHighestSalary
