select * from Album;
select * from Genre;
SELECT * from Song;
SELECT * from artist;


-- Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.

SELECT s.Title AS "SongTitle", a.Title AS "AlbumTitle", ar.ArtistName, g.Label AS "GenreLabel"
FROM Song s
LEFT JOIN Album a 
ON s.AlbumId = a.AlbumId
LEFT JOIN Artist ar 
ON s.ArtistId = ar.ArtistId
Left Join Genre g 
ON s.GenreId = g.GenreId
WHERE ar.ArtistName = "Joe Lizzo" AND  a.Title = "Mo Jo-e";




-- Reminder: Direction of join matters. Try the following statements and see the difference in results.

SELECT a.Title AS "album title", s.Title 
FROM Album a 
LEFT JOIN Song s 
ON s.AlbumId = a.AlbumId;


SELECT a.Title AS "album title", s.Title 
FROM Song s 
LEFT JOIN Album a 
ON s.AlbumId = a.AlbumId;







-- Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

SELECT a.Title, COUNT(s.SongId) AS "Number of Songs"
FROM Album a 
LEFT JOIN Song s 
ON a.AlbumId = s.AlbumId
GROUP BY a.Title;

-- Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.


SELECT a.Title, MAX(a.AlbumLength) AS "Longest Album minute length"
From Album a;
