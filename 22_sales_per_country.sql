-- Provide a query that shows the total
-- sales per country.

SELECT BillingCountry,
Count(Total) AS Sales,
ROUND(SUM(Total),2) AS Total
FROM Invoice
GROUP BY BillingCountry 
ORDER BY Total DESC