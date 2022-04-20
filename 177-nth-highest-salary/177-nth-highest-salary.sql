CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN

  DECLARE NEW_N INT;
  SET NEW_N = N-1;

  RETURN (
      
      SELECT IFNULL((SELECT DISTINCT salary
                    FROM Employee
                    ORDER BY salary DESC
                    LIMIT 1 OFFSET NEW_N), NULL)
      
  );
  
END