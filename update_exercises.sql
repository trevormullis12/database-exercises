USE codeup_test_db;

-- All albums in your table.
SELECT "All albums in your table" AS "Exercise 1";
SELECT * FROM albums;
-- All albums released before 1980
SELECT "All albums released before 1980" AS "Exercise 2";
SELECT * FROM albums WHERE release_date < 1980;
-- All albums by Michael Jackson
SELECT "All albums by Michael Jackson" AS "Exercise 3";
SELECT * FROM albums WHERE artist = "Michael Jackson";