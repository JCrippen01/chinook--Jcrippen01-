-- Provide a query that shows all the Tracks, 
-- but displays no IDs. The resultant table
-- should include:
-- Album name
-- Media type
-- Genre

SELECT t.Name AS Tracks, a.Title AS Album, m.Name AS MediaType, g.Name AS Genre
FROM Track AS t
INNER JOIN Album AS a
ON a.AlbumId = t.AlbumId
INNER JOIN Genre AS g
ON g.GenreId = t.GenreId
INNER JOIN MediaType AS m
ON m.MediaTypeId = t.MediaTypeId