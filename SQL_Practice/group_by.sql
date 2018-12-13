-- #1 
SELECT Count(*), g.Name
FROM Track t
JOIN Genre g ON g.GenreId = t.GenreId

-- #2 
SELECT Count(*), g.Name
FROM Track t 
JOIN Genre g ON g.GenreId = t.GenreId 
WHERE g.Name = "Pop" OR g.Name = "Rock"
GROUP BY g.Name;

-- #3
SELECT ar.Name, Count(*)
FROM Artist ar
JOIN Album al ON al.ArtistId = ar.ArtistId
GROUP BY al.ArtistId; 