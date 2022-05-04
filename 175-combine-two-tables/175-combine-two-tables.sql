# Person.personId와 Address.personId를 기준으로 Join
# Person 테이블 전체를 가져와야 하므로 Left Join

select T1.firstName, T1.lastName, T2.city, T2.state from Person T1
left join Address T2 on T1.personId = T2.personId