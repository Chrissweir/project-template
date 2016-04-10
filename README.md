# Irish Constituencies Neo4j Database
###### Christopher Weir, G00309429

## Introduction
For my project I have to design a neo4j graph database for the constituencies in the Republic of Ireland, the candidates that ran in those constituencies and create a relationship between them.

## Database
For this database I planned to create nodes for each Constituency, Candidate, and Party. I began by creating the 40 constituencies in Ireland. Each constituency has properties for the name, population, the number of seats, and a short description. The line below is an example of how I created a single node(Constituency) with labels and properties in order to make it unique.
```
CREATE (`nClare`:Constituency {name:"Clare", population:111336, seats:4, description:"The county of Clare, except the part thereof which is comprised in the constituency of Limerick City."});
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
CREATE (n)-[r:FROM]->(d) RETURN n,d;
```
I then began to create the relationship for the Parties to each of the Candidates. I matched the parties to the candidates by searching through all the nodes for the party property, and then I searched for the name property in all the nodes. I then created the relationship under the label MEMBER_OF. Below is an example of I created this.
```
MATCH (n{party:"Fine Gael"}), (d{name:"Fine Gael"}) 
CREATE (n)-[r:MEMBER_OF]->(d) RETURN n,d;
```
## Queries
1.Find the Constituency of the youngest elected member of Fianna Fail.
2.Find the top 5 parties with the greatest number of candidates. 
3.Find all females from the Labour Party that were not elected and what constituency they were from.

#### Query one - Constituency of the youngest elected member of Fianna Fail.
This query retreives the Constituency of the youngest elected member of the Fianna Fail Party by checking if the member was elected, that they are from the Fianna Fail Party, and that their age is not equal to null. The query then returns the Constituency of these members but is ordered by finding the minimum age of the results and outputs them with a limit of 1.
```
MATCH (n:Candidates)-[FROM]->(c:Constituency),(n:Candidates)-[MEMBER_OF]->(p:Party)
WHERE n.elected = "Yes" AND p.name="Fianna Fail" AND n.age<>"null"
RETURN c, MIN(n.age) AS n
ORDER BY n ASC LIMIT 1;
```

#### Query two - Top 5 parties in order of candidate size.
This query retreives the top 5 parties with the greatest number of candidates by sorting all the parties in order of size and outputs the top 5 results.
```
MATCH (p:Party)
RETURN p, size((p)<-[:MEMBER_OF]-()) AS c
ORDER BY c DESC LIMIT 5;
```

#### Query three - All non-elected females from the Labour Party and what constituency they were from.
This query finds all females from the Labour Party that were not elected and what constituency they were from by checking if they were first elected or not, from the Labour Party, and female. The Constituency, Party, and Name of the members is outputted as the result.
```
MATCH (n:Candidates)-[MEMBER_OF]->(p:Party),(n:Candidates)-[FROM]->(d:Constituency)
WHERE n.elected = "No" AND p.name="Labour Party" AND n.gender="Female" 
RETURN n,d,p;
```

## References
1. [Neo4J website](http://neo4j.com/), the website of the Neo4j database.
2. [Youtube Input Tutorial](https://www.youtube.com/watch?v=LTdOgvpsR3c), a Youtube Tutorial using Excel to import cypher queries.
3. [Wikipedia website - Irish Constituencies](https://en.wikipedia.org/wiki/Parliamentary_constituencies_in_the_Republic_of_Ireland), Parliamentary constituencies in the Republic of Ireland.
4. [TheJournal website - Candidates](http://www.thejournal.ie/election-2016/constituency/), the website with information on all the candidates running.
5. [Wikipedia website - Irish Parties](https://en.wikipedia.org/wiki/List_of_political_parties_in_the_Republic_of_Ireland), the website with information on all Irish Parties in government.
6. [Wikipedia website - Irish Parties](https://en.wikipedia.org/wiki/Irish_general_election,_2016), more information the Irish Parties in government.
7. Other Students-**Gareth Lynskey**,**Patrick Griffin**,**Keith Langan**, discussed and shared some interesting queries to use.
