yt shows all the Tracks, but displays no IDs. The resultant table should include the Album name, Media type and Genre.

SELECT Track.Name, Album.Title, MediaType.Name, Genre.Name
FROM Track 
JOIN Album 
ON Track.AlbumId == Album.AlbumId
JOIN MediaType
ON MediaType.MediaTypeId == Track.MediaTypeId
JOIN Genre
ON Genre.GenreId == Track.GenreId
