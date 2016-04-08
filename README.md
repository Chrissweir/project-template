# Irish Constituencies Neo4j Database
###### Christopher Weir, G00309429

## Introduction
For my project I have to design a neo4j graph database for the constituencies in the Republic of Ireland, the candidates that ran in those constituencies and create a relationship between them.

## Database
For this database I planned to create nodes for each Constituency, Candidate, and Party. I began by creating the 40 constituencies in Ireland. Each constituency has properties for the name, population, the number of seats, and a short description. The line below is an example of how I created a single node(constituency) with labels and properties in order to make it unique.
```
create (`nCarlow–Kilkenny`:Constituency {name:"Carlow–Kilkenny", population:145659, seats:5, description:"The county of Kilkenny and the county of Carlow, except the part thereof which is comprised in the constituency of Wicklow."})
```
I then added the Candidates to the database in order of the constituency they are from. Again like the constituencies, the candidates have properties for their name, party, gender, constituency, age, and if they were elected or not. The line below is an example of how I created a single node(candidate) with labels and properties in order to make it unique.
```
Create (`nJohn Paul Phelan`:Candidates {name:"John Paul Phelan", party:"Fine Gael", gender:"Male", constituency:"Carlow-Kilkenny", age:37, elected:"Yes"}),
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
