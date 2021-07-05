# MySQL 문법

## SET: 변수 선언
* [SET @var=5;] [SET @var:=5;] [SELECT @var:=5;]

            SET @hour:=-1;
            SELECT (@hour:=@hour+1) as HOUR,(SELECT COUNT(*) FROM ANIMAL_OUTS WHERE HOUR(DATETIME)=@hour) AS COUNT
            FROM ANIMAL_OUTS
            WHERE @hour < 23;

→ hour 변수를 -1로 선언해서 22까지 +1씩 증가시킨다.
→ hour는 0부터 23까지 생성된다. 

## IFNULL: 해당 컬럼이 널값을 반환할 때, 다른 값으로 출력

           IFNULL(NAME, 'No Name')   

→ NAME 컬럼에서 Null값이 있을 경우 'No Name'으로 출력한다.

## INNER JOIN, LEFT/RIGHT JOIN
* 오라클은 OUTER JOIN 있지만, MySQL에는 없어서 LEFT, RIGHT 조인을 사용한다.





