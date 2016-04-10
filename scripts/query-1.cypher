//This query retreives the Constituency of the youngest elected member of the Fianna Fail Party 
//by checking if the member was elected, that they are from the Fianna Fail Party,
//and that their age is not equal to null. The query then returns the Constituency 
//of these members but is ordered by finding the minimum age of the results and outputs them with a limit of 1.

MATCH (n:Candidates)-[FROM]->(c:Constituency),(n:Candidates)-[MEMBER_OF]->(p:Party)
WHERE n.elected = "Yes" AND p.name="Fianna Fail" AND n.age<>"null"
RETURN c, MIN(n.age) AS n
ORDER BY n ASC LIMIT 1;