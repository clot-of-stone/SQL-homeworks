-- поскольку в моей базе данных отсутствуют альбомы, вышедшие в 2018 году, я взял на себя смелость сделать запрос, где искомый год 2010
SELECT title, release_year FROM albums 
WHERE release_year = 2010;

SELECT track_name, run FROM tracks 
WHERE run = (SELECT MAX(run) FROM tracks);

SELECT track_name, run FROM tracks 
WHERE run > '00:03:30';

SELECT title, release_year FROM songsters 
WHERE release_year BETWEEN 2018 AND 2020;

SELECT nickname FROM performers 
WHERE nickname NOT LIKE '%% %%';

SELECT track_name FROM tracks 
WHERE track_name ~~* '%% my %%';
