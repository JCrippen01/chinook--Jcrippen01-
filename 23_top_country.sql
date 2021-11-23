-- Which country's customers spent the most?
-- HINT: Use the MAX function on a subquery.

with CountryTotalSales AS (
    SELECT BillingCountry,
        Count(Total) AS NumOfSales,
        SUM(Total) AS Total
    FROM Invoice
    GROUP BY BillingCountry
)
SELECT BillingCountry
FROM CountryTotalSales
    WHERE Total = (
    SELECT MAX(Total)
    FROM CountryTotalSales
) 