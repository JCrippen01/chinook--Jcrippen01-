-- What are the respective total sales for each of those years?
-- HINT: SUM

SELECT strftime('%Y', InvoiceDate) as "Year",
SUM(Total)
FROM Invoice
Where strftime('%Y', InvoiceDate) IN ('2009','2011')
GROUP BY Year


