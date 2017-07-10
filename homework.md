1) Return ALL the data in the 'movies' table.

SELECT * FROM movies

2) Return ONLY the name column from the 'people' table 3.Oops! Someone at CodeClan spelled Del's name wrong! Change it to reflect the proper spelling.

UPDATE people SET name = 'Derek Middlemiss' WHERE name = 'Del Boy Middlemiss';
SELECT name FROM people;

3) Return ONLY your name from the 'people' table.

SELECT name FROM people WHERE name = 'Ben Ghirardani'; 

4) The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.

DELETE FROM movies WHERE title = 'Batman Begins';

5) Create a new entry in the 'people' table with the name of one of the instructors.

INSERT INTO people (name) VALUES ('John Harper');

6) John Travolta, has decided to hijack our movie evening, Remove him from the table of people.

DELETE FROM people WHERE name = 'John Travolta';

7) Somehow the list of people includes two people named 'Christopher'. Change these entries to the proper names ('Christopher Whatshisface', 'Christopher Theotherone')

UPDATE people SET name = 'Christopher Whatshisface' WHERE name = 'Christopher Donnelly';
UPDATE people SET name = 'Christopher Theotherone' WHERE name = 'Christopher Hunter';

8) The cinema has just heard that they will be holding an exclusive midnight showing of 'Guardians of the Galaxy 2'!! Create a new entry in the 'movies' table to reflect this.

INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '00:00');

9) The cinema would also like to make the Guardian movies a back to back feature. Update the 'Guardians of the Galaxy' show time from 12:10 to 21:30

UPDATE movies SET show_time = '21:30' WHERE title = 'Guardians of the Galaxy';

10) Research how to delete multiple entries from your table in a single command.

DELETE FROM movies WHERE title IN ('Iron Man', 'The Incredible Hulk');
