//This query retreives the top 5 parties with the greatest number of candidates 
//by sorting all the parties in order of size and outputs the top 5 results.

MATCH (p:Party)
RETURN p, size((p)<-[:MEMBER_OF]-()) as c
ORDER BY c DESC LIMIT 5;