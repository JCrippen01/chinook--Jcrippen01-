SELECT a.Name AS Artist,
    Count(il.InvoiceLineId) AS TrackSales
From InvoiceLine il
    JOIN Track t on t.TrackId = il.TrackId
    JOIN Invoice i on i.InvoiceId = il.InvoiceId
    JOIN Album al on al.AlbumId = t.AlbumId
    JOIN Artist a on a.ArtistId = al.ArtistId
GROUP BY a.Name
ORDER BY TrackSales Desc
LIMIT 10;