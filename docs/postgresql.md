# Postgresql

> 189. HEAP FILE LAYOUT
> 190. BEHIND THE SCENES OF INDEXS

## Data Types

1. Number

   - smallint, INTEGER, bigint
   - smallserial, SERIAL, bigserial
   - FLOAT, numeric(very accurate), double precision

2. Character

   - Char(n):

   * Varchar(n): store string up to n characters
   * varchar: store any length of string
   * text: store any length of string

3. Boolean

- true
- false
- null

4. DateTime
   - Date: convert YYYY-MM-DD
   - Time
     - without tz: convert 24 time
     - with tz: UTC
   * Timestamp with time zone

## Performance

### Data Structure in Postgresql

    * Store data:
        * Heap: contains all the data of tables
        * Tuple/item: individual row from the table
        * Block/page: Heap file is divided into many different blocks. Each block stores some number of rows
    * Index:
        * Data structure that efficiently tells us what block/index a record is stored at
        * Pros: fast execution
        * Cons:
            * Can be large
            * slows down insert/update/delete
        * Postgest:
            * automatically creates an index for the primary key column of every table
            * automatically creates an index for any unique constraint

### Query Tuning: benchmarking + evaluating queries

    * Explain: Build a query plan and display info about it
    * Explain analyze: Build a query plan, run it, and info about it

### View

    * Create a fake table has rows from other tbales
    * Can reference the view in any place
    * query that gets executed every time you refer to it

### Materialized View

    * Query that gets executed only at very specific time
    * Result are saved and can be referenced without rerunning the query

### Transaction

    * Losing the connection will automatically rollback the transaction
    * Flow:
        * BEGIN: db create a isolated workspace for 1 connection -> make a copy all of tables to this space
        * COMMIT: to merge changes back into main data pool
        * ROLLBACK: running bad command will put the trans in an aborted state - you must rollback

## SQL Injection

    * NEVER concatenate user-provided input into a sql query
