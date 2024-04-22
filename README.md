# DB_library_project

## Introduction
This project contains 6 tables:

**Authors**: name, birth date, nationality and biography;

**Books**: title, isbn, edition, release year, price, author id and genre id and publisher id (as foreign keys);

**Genres**: name, description;

**Publishers**: name, address, phone, website;

**Customers**: name, address, phone, email, pas;

**Loans**: customer id and book id (as foreign keys), loan date, due date, return date.

All of these tables represent simple data in library's database. During the project, there were a lot of operations: improved original and created combined tables, made a lot of simple and complicated queries to keep the reports easier, created virtual tables and so on.

## Project structure
1. Practical assignment 1:
  - download MySQL server
  - connect to the database
  - create schema
  - create 6 tables on the library`s theme
  - add some simple queries
2. Practical assignment 2:
  - update tables with added keys and one-to-many relationships
  - create new tables with many-to-many relationships: author-book, book-genre, book-loan
  - add two complicated queries using many-to-many tables
3. Practical assignment 3:
  - create non-correlated subqueries using: select, update and delete, which contain different operations inside
  - come up with correlated subqueries using: select, update and delete, which contain different operations inside
  - create 4 queries using: UNION, UNION ALL, INTERSECT and EXCEPT
4. Practical assignment 4:
  - create procedures, which contain: IN, OUT and INOUT
  - come up with complicated procedure, using COMMIT and ROLLBACK
  - show how it works through executions
5. Practical assignment 5:
  - create a view, which saves book's titles, author's and publisher's names, release years, loan dates and days left to the due date
  -  add indexes for all columns, which is used in view
6. Final assignment:
  - draw up the project in the GitHub
  - sort all assignments into separate folders
  - check If each query and task into its own files
  - prepare README file

## Deploying the project

1. Create a GitHub repository
2. Clone the GitHub repository into the database using the web URL
3. Create new branches for every assignment from main branch
4. Commit and push the folder with the assignment into its branch
5. In GitHub create pull request for every assignment separately
6. You`re done! Now your project can see and comment on people, for whom you shared it

## Info about author

Sahaidak Vladyslava, student of ITBA on 1 course.
