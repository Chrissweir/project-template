//This query finds all females from the Labour Party that were not elected and what 
//constituency they were from by checking if they were first elected or not, from the
// Labour Party, and female. The Constituency, Party, and Name of the members is outputted as the result.


MATCH (n:Candidates)-[MEMBER_OF]->(p:Party),(n:Candidates)-[FROM]->(d:Constituency)
WHERE n.elected = "No" AND p.name="Labour Party" and n.gender="Female" 
RETURN n,d,p;