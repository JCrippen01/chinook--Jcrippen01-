SELECT strftime('%Y', InvoiceDate) as "Year",
COUNT(DISTINCT InvoiceId)
FROM Invoice
Where strftime('%Y', InvoiceDate) IN ('2009','2011')
GROUP BY Year
