w6_deliverables_ajp
===================

Week 6-7 deliverables

w6_deliverables_ajp
===================

Week 6-7 deliverables

1. 1. Install PostgreSQL.  [Advanced challenge:  do this work "in the cloud"]

Opened up an account on postgres.heroku.com

2. 2. Create a PostgreSQL database.

Host	ec2-23-21-133-106.compute-1.amazonaws.com
Database	d3svclmbdh4e5

3. 3. Create three tables in the database. If you are less comfortable with this piece, start by putting all of the information into a single table. [Deliverable: single data definition .SQL script that creates tables].  The information should be related so that there is a many to many relationship.   [Simple example: customers table, products table, orders table - one customer can order more than one product; one product can be ordered by more than one customer; the orders table models this relationship].   [Challenge assignment:  add more tables...]

see file: create_tables.sql
I'm in charge of a running club at my daughter's school, so the tables are populated with data from that. I would love to extend this into a web app.

4. 4. Populate the three tables with at least 5 rows in each table.  [Deliverable: single .SQL script that populates tables with information].   [Challenge assignment:  load a set of data from another data source into your SQL Tables].

see file: populate_tables.sql
I read in data from csv files I created from the excel data I have.

5. 5. Write a SQL Select statement that joins information from the tables. You should create your data in such a way that at least one row is pulled from each of the three tables. The result set should include at least one column with a date datatype, two columns with numeric data types, and two rows with categorical data types. The result set should return at least 5 rows total. [Deliverable: single .SQL script that contains SELECT statement]

see file: select_query.sql
This contains three versions of my select query. See notes in this file for details.

6. 6. Pull the information from the three tables into an R dataframe. You can create an intermediate file (.CSV for example) if you want to. [Deliverable: single script with R code]

see file: R_code.r
This only contains one line since I'm just reading in data from the select query saved as a csv file.

7. 7. [Challenge assignment, non-graded] For students who want, create an account on github (as needed), and post your solution in a repository there. [Deliverable: address of github repo].

Here it is. =-)

8. 8. [Challenge assignment, non-graded] Provide support for other students’ questions on forum.
9. 9. [Challenge assignment, non-graded]  Discuss on Forum:  Why PostgreSQL?  What are the pros and cons of working in this environment, versus other relational databases.
