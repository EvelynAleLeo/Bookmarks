# Bookmarks

![alt US1](https://github.com/EvelynAleLeo/Bookmarks/blob/master/public/userstory1.png)

Instructions on how to setup a database:

1.- Connect to psql (typing psql in terminal)
2.- Create the database typing the pqsl command CREATE DATABASE bookmark_manager;
3.- Connect (Go to) the database using the pqsl command \c bookmark_manager;
4.- Create a table. You can do this by running the query saved in the file        01_create_bookmarks_table.sql, that is: CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));

