-- Which sales agent made the most in sales over all?
with ETotalSales as (
SELECT e.FirstName || " " || e.LastName AS EmployeeName,
    SUM(i.total) as Total
FROM Employee e
JOIN Customer AS c
ON c.SupportRepId = e.EmployeeId
JOIN Invoice AS i
ON i.CustomerId = c.CustomerId
GROUP BY EmployeeName
)
SELECT EmployeeName
FROM ETotalSales
WHERE Total = (
    SELECT Max(Total)
    FROM ETotalSales
)