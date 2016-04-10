//These are samples of the queries I used to create the relation shipts

//Create the "FROM" relationship for Candidates to the Constituencies
MATCH (n{constituency:"Carlow-Kilkenny"}), (d{name:"Carlow–Kilkenny"}) 
CREATE (n)-[r:FROM]->(d) 
RETURN n,d


////Create the "MEMBER_OF" relationship for Candidates to the Parties
MATCH (n{party:"Fine Gael"}), (d{name:"Fine Gael"}) 
CREATE (n)-[r:MEMBER_OF]->(d) 
RETURN n,d