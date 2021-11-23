-- Provide a query that shows the total
-- number of tracks in each playlist.
-- The resultant table should include:
-- Playlist name
-- Total number of tracks on each playlist

SELECT p.Name AS PlayListName,
COUNT(*) as TrackCount
FROM Playlist p
Join PlaylistTrack AS pt ON pt.PlaylistId = p.PlaylistId
GROUP BY p.Name;