--1) INSERT INTO ARTISTS VALUES ('-1','Micheal Jackson');
-- The tuple was succesfully inserted into the table, negative numbers are within the constraints
-- of the INTEGER data type, although the number was contained in qutation marks it seems sqlite
-- is able to still identify is as a integer and stores it as a integer


--2) INSERT INTO ARTISTS VALUES (2, 'Roger Waters');
-- We get this error, Runtime error: UNIQUE constraint failed: Artists.ArtistID (19)
-- This makes sense that we will not be able to insert this tuple because there already exists
-- a tuple with the unique primary key 2 and there cannot be duplicates of a primary key



--3) INSERT INTO ARTISTS VALUES (NULL,'Roger Waters');
-- It appears sqlite allows this operation to insert the tuple succesfully
-- but it automatially inserts the null as the next available unique integer id (primary key)
-- because the tuple was stores with the ArtistID of 8, so the system automatically assigns a 
-- INTEGER primary key according to the data constraints if a null is entered for the primary key