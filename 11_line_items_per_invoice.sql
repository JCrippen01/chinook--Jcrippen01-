--Looking at the InvoiceLine table, provide a query that COUNTs
--the number of line items for each Invoice.
-- HINT: GROUP BY

SELECT * FROM InvoiceLine LIMIT 5;

SELECT InvoiceId, COUNT(*) as LineItemCount
FROM InvoiceLine
GROUP BY InvoiceId;