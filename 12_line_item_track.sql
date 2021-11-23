--Provide a query that shows each Invoice line item,
--with the name of the track that was purchased.

SELECT InvoiceLineId, InvoiceID, i.TrackId, i.UnitPrice,
Quantity,
Name as TrackPurchased
FROM InvoiceLine as i
INNER JOIN Track as t
ON t.TrackId = i.InvoiceLineId


--Tyler used InvoiceLine.* to use SELECT ALL from InvoiceLine

