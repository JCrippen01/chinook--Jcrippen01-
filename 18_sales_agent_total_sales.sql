-- Provide a query that shows total sales
-- made by each sales agent. The resultant
-- table should include:
-- Employee full name
-- Total sales for each employee (all time)
SELECT e.FirstName || " " || e.LastName AS "FullName",
Sum(i.total) AS "Total Sales"
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
JOIN Invoice i ON i.CustomerId = c.CustomerId
GROUP BY FullName 