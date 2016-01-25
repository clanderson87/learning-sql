SELECT Playlist.Name, tb1.* 
FROM Playlist
JOIN (
SELECT COUNT(PlaylistTrack.PlaylistId), PlaylistTrack.PlaylistId 
FROM PlaylistTrack 
GROUP BY PlaylistTrack.PlaylistId
) AS tb1
ON Playlist.PlaylistId == tb1.PlaylistId;

