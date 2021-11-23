-- Provide a query that shows the total number of invoices per country.
-- HINT: GROUP BY

SELECT COUNT(InvoiceId), BillingCountry as Country
FROM Invoice
Group By Country

Select * From Invoice