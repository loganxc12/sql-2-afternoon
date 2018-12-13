-- #1
SELECT * 
FROM Invoice i
JOIN InvoiceLine il ON il.invoiceId = i.invoiceId
WHERE il.UnitPrice > 0.99;

-- #2 
SELECT i.InvoiceDate, c.FirstName, c.LastName, i.Total 
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId;

-- #3
SELECT c.FirstName, c.LastName, e.FirstName, e.LastName 
FROM Customer c
Join Employee e ON c.SupportRepId = e.EmployeeId;

-- #4
SELECT al.Title, ar.Name 
FROM Album al
JOIN Artist ar On al.ArtistId = ar.ArtistId;

-- #5
SELECT pt.TrackId
FROM PlaylistTrack pt 
JOIN Playlist p ON pt.PlaylistId = p.PlaylistId
WHERE p.Name = 'Music';

-- #6
SELECT t.name 
FROM Track t
JOIN PlaylistTrack pt ON pt.TrackId = t.TrackId
WHERE pt.PlaylistId = 5;

-- #7
SELECT t.Name, p.Name 
FROM Track t
JOIN PlaylistTrack pt ON pt.TrackId = t.TrackId
JOIN Playlist p ON p.PlaylistId = pt.PlaylistId;

-- #8 
SELECT t.Name, al.Title 
FROM Track t 
JOIN Album al ON t.AlbumId = al.AlbumId
JOIN Genre g ON g.GenreId = t.GenreId
WHERE g.Name = "Alternative";
