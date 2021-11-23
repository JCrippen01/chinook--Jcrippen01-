-- Provide a query that shows each Invoice line item,
-- with the name of the track that was purchase, and the name of the artist.

SELECT i.*,
t.Name as TrackPurchased, a.Name as Artist
FROM InvoiceLine as i
INNER JOIN Track as t
ON t.TrackId = i.InvoiceLineId
INNER JOIN Album 
ON album.AlbumId = t.AlbumId
INNER JOIN Artist as a
ON a.ArtistId = album.ArtistId