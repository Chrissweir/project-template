# Irish Constituencies Neo4j Database
###### Christopher Weir, G00309429

## Introduction
For my project I have to design a neo4j graph database for the constituencies in the Republic of Ireland, the candidates that ran in those constituencies and create a relationship between them.

## Database
For this database I planned to create nodes for each Constituency, Candidate, and Party. I began by creating the 40 constituencies in Ireland. Each constituency has properties for the name, population, the number of seats, and a short description. The line below is an example of how I created a single node(Constituency) with labels and properties in order to make it unique.
```
CREATE (`nClare`:Constituency {name:"Clare", population:111336, seats:4, description:"The county of Clare, except the part thereof which is comprised in the constituency of Limerick City."}),
```
I then added the Candidates to the database in order of the constituency they are from. Again like the constituencies, the candidates have properties for their name, party, gender, constituency, age, and if they were elected or not. The line below is an example of how I created a single node(Candidate) with labels and properties in order to make it unique.
```
CREATE (`nJohn Paul Phelan`:Candidates {name:"John Paul Phelan", party:"Fine Gael", gender:"Male", constituency:"Carlow-Kilkenny", age:37, elected:"Yes"});
```
I then added the Parties to the database. Again like the other two, the parties have properties for their name, leader, candidates, elected, colour. The line below is an example of how I created a single node(Party) with labels and properties in order to make it unique.
```
CREATE (`nFine Gael`:Party {name:"Fine Gael", candidates:88, elected:49, leader:"Enda Kenny", colour:"Blue"});
```
Once I had these three sets of nodes created I started to create their relationships to each other. I matched the constituencies to the candidates by searching through all the nodes for the constituency property, and then I searched for the name property in all the nodes. I then created the relationship under the label FROM. Below is an example of I created this.
```
MATCH (n{constituency:"Clare"}), (d{name:"Clare"}) 
CREATE (n)-[r:FROM]->(d) return n,d
```
I then began to create the relationship for the Parties to each of the Candidates. I matched the parties to the candidates by searching through all the nodes for the party property, and then I searched for the name property in all the nodes. I then created the relationship under the label MEMBER_OF. Below is an example of I created this.
```
MATCH (n{party:"Fine Gael"}), (d{name:"Fine Gael"}) 
CREATE (n)-[r:MEMBER_OF]->(d) return n,d
```
## Queries
Summarise your three queries here.
Then explain them one by one in the following sections.

#### Query one title
This query retreives the Bacon number of an actor...
```cypher
MATCH
	(Bacon)
RETURN
	Bacon;
```

#### Query two title
This query retreives the Bacon number of an actor...
```cypher
MATCH
	(Bacon)
RETURN
	Bacon;
```

#### Query three title
This query retreives the Bacon number of an actor...
```cypher
MATCH
	(Bacon)
RETURN
	Bacon;
```

## References
1. [Neo4J website](http://neo4j.com/), the website of the Neo4j database.
2. [Youtube Input Tutorial](https://www.youtube.com/watch?v=LTdOgvpsR3c), a Youtube Tutorial using Excel to import cypher queries. 
