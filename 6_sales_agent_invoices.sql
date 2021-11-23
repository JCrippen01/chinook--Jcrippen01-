SELECT *
FROM Employee
LIMIT 5;

SELECT *
FROM Invoice
LIMIT 5;

SELECT FirstName, LastName, InvoiceID, Title
FROM Employee as e
INNER JOIN Invoice as i
ON i.InvoiceId = e.EmployeeId
WHERE Title LIKE '%Agent'
