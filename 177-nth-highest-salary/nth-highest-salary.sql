CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
SET N = N - 1;
  RETURN (
      # Write your MySQL query statement below.
      SELECT DISTINCT salary FROM Employee
      ORDER BY salary DESC
      LIMIT 1 OFFSET N 

  );
END

/*THOUGHT PROCESS:
1. ORDER BY
2. LIMIT BY 1
3. OFFSET BY N - 1
*/
