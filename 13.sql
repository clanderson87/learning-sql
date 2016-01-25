ELECT Artist.Name as 'Artist', tb2.*
FROM Artist
JOIN
(
SELECT Album.ArtistId as 'ArtistId', tb1.*
FROM Album
JOIN
(
SELECT tk.Name, tk.AlbumId, InvoiceLine.* 
FROM InvoiceLine
JOIN Track AS tk ON InvoiceLine.TrackId == tk.TrackId
) AS tb1
ON Album.AlbumId == tb1.AlbumId
) AS tb2
ON Artist.ArtistId == tb2.ArtistId;
