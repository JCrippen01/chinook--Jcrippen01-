SELECT *
FROM Invoice
LIMIT 5;

SELECT FirstName, LastName, InvoiceId, InvoiceDate, BillingCountry
FROM Customer c
INNER JOIN Invoice as i
ON i.BillingCountry = c.Country;