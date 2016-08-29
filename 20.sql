SELECT Employee.FirstName, Employee.LastName, SUM(Invoice.Total) AS InvoiceTotal FROM Invoice 
JOIN Customer ON Invoice.CustomerId==Customer.CustomerId
JOIN Employee ON Customer.SupportRepId==Employee.EmployeeId
WHERE InvoiceDate LIKE "2010%"
GROUP BY Employee.EmployeeId
ORDER BY InvoiceTotal DESC LIMIT 1;