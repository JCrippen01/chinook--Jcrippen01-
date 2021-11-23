SELECT c.FirstName, c.LastName, c.Country, e.FirstName||' '||  e.LastName as AgentName, Total
FROM Customer as c
INNER JOIN Employee as e
ON e.EmployeeId = c.SupportRepId
INNER JOIN Invoice as i
ON i.InvoiceID = c.CustomerId