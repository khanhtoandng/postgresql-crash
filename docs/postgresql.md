# DATABASE

> SQL used to interact with db

## Database Design Process

1. Resource exist in app. Create a seperate table for each of these feature
   1. WHAT kind of thing is db store?
   2. WHAT properties does this thing have?
   3. WHAT datatype of properties?
2. Relationshop between 2 types of resources

## SQL Executed Order

1. FROM: specifies starting set of rows to work with
2. JOIN ON: merges data from additional tables
3. WHERE: Filters the set of rows
4. GROUP BY: groups row by a unique set of values
5. HAVING: Filter the set of groups
6. SELECT

## Relationship

1. One-to-Many: Has Many <> Many-to-One: Has One
   EX:

- A school has many students
- A Student has one school

2. One-to-One
3. Many-to-Many

4. Primary key

   - Each row in every table has one primary key
   - Integer or UUID
   - Will never change

5. Foreign key

   - Relationship between two tables
   - Name: xyz_id
   - Exactly equal to the primary key of the referenced row
   - Will change if the relationship changes

6. JOIN
   - Produces values by merging together rows from different related table
   - 4 kinds of join:
     - Inner Join
     - Left Join
     - Right Join
     - Full Join
7. Aggregation

   - Reduces many values down to one
   - aggregation function : count(), avg(), sum(), min(), max()

8. Grouping
   - Reduces many rows down to fewer rows
   - Mechanism:
     - Find the set of all unique value
     - Take each row and assign it to group based on its value
