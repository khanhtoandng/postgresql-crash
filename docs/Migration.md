# MIGRATION

## Story

1. Changes to DB structure and changes to clients need to be made at precisely the same time.
2. When working with other engineers, we need a really easy way to tie the structure of out database to our code

## Solution

> Schema Migration File

- Contain code that describes a precise and detaied changed that we want to make to the database
- Structure:
  - Up: contains a statement that advances or upgrades the structure of out db
  - Down: contains a statement that exactly undo's the 'up' command

* Pull request:

  1. Code review request:
     - New version of API code refer to 'body' column
     - Migration file that changes the 'content' column to 'body' column
  2. Other engineers applies the migration file, get the correct structure database
  3. Engineer evalute code
  4. Review complete, Engineer revert the migration, back to the current real structure of the db

* API Deploy:
  1. Start deploy
  2. Update code to remote server
  3. Run all available migration -> DB structure updated
  4. Start receiving traffic

> $env:DATABASE_URL="postgres://postgres:admin@localhost:5432/socialnetwork"; npm run migrate up

## Schema vs Data Migration

    * Schema Migration: add/remove column, add/remove table, ...
    * Data Migration: move data around between different column

    > Dont run data migrations at the same time as schema migration: Split seperate Migration
