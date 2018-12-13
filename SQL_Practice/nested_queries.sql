-- #1 
SELECT * 
FROM Invoice 
WHERE InvoiceId IN ( SELECT InvoiceId FROM InvoiceLine WHERE UnitPrice > 0.99 );

-- #2
SELECT * 
FROM PlaylistTrack
WHERE PlaylistId IN (SELECT PlaylistId FROM Playlist WHERE Name = "Music");

-- #3 
SELECT Name 
FROM Track 
WHERE TrackId IN ( SELECT TrackId FROM PlaylistTrack WHERE PlaylistId = 5 );

-- #4
SELECT * 
FROM Track 
WHERE GenreId IN ( SELECT GenreId FROM Genre WHERE Name = "Comedy" );

-- #5
SELECT * 
FROM Track 
WHERE AlbumId IN ( SELECT AlbumId FROM Album WHERE Title = "Fireball" );

-- #6
SELECT * 
FROM Track 
WHERE AlbumId IN ( 
     SELECT AlbumId FROM Album WHERE ArtistId IN ( 
          SELECT ArtistId FROM Artist WHERE Name = "Queen"
     ) 
);