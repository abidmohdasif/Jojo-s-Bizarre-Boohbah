# Jojo-s-Bizarre-Boohbah

## Question 1
### The error is a group by 
### Because the name column is neither a aggregate or grouped it needs to be added to the groupby at the end of the statement

## Question 2
### The error is that the join is wrong
### This error happens becuase when the primary keys match it outputs and the sql has different tables with the same primary key

## Question 3
### The error is that "BOOHBAH_NAME" is not a valid identifier
### This happens becuase ORCALE can find a cloumn with that name

## Question 4
### The error is that the column is ambiguosly defined
### The Where statement doesn't specify wheather it is supposed to be b.boohbah or l.boohbah

## Question 5
### It is a logic Error
### The Where keyword is not needed

## Question 6
### The error is a that it returns more than one row
### This happens because it is a single row subquery and it is only supposed to return one row so it needs to filter out the rest

## Question 7
### The error is that it is a cartesion join
### The query doesnt have a join conditions so it mixes with all stand

## Question 8
### The error is that a group function is not allowed here
### SQL has a a specific order of operations and the where statement doesnt knwo what the AVG is 

## Question 9
### It is a Logic Error
### You have to match the order from outside to inside the statement

## Question 
### It is a Logic Error
### You are using two unrelated table so you have to connect them