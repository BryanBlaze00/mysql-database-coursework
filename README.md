# MySQL Database and Procedural SQL Coursework

A collection of MySQL schema, query, and procedural SQL work demonstrating relational database design and implementation.

## What this demonstrates

- Relational schema definition and table creation
- Multi-table joins, filtering, grouping, and subqueries
- Stored procedures and stored functions
- Triggers and database-side business logic
- Views, indexes, and repeatable SQL scripts

## Repository structure

- `01-schema/` - schema and database definition scripts
- `03-programs/` - stored procedures, functions, and other procedural SQL
- `04-assignments/` - supporting coursework submissions and database exercises

## Environment

- MySQL Server 8.0 or compatible MySQL environment
- MySQL Workbench or another SQL client

## Running the scripts

1. Create a dedicated MySQL database for local testing.
2. Run the schema script from `01-schema/` first.
3. Execute the scripts in `03-programs/` after the required tables exist.
4. Review the assignment documents in `04-assignments/` for the related requirements and examples.

Run coursework SQL only against a disposable development database. Several scripts create or modify database objects and are not intended for production use.

## Portfolio note

This repository is intentionally organized around database concepts rather than a single application. The SQL files provide concrete examples of schema design, querying, and procedural database programming.
