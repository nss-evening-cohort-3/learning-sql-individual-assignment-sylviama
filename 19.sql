SELECT (Employee.FirstName||" "||Employee.LastName) AS SalesAgent , SUM(Invoice.Total) FROM Employee 
JOIN Customer ON Employee.EmployeeId==Customer.SupportRepId
JOIN Invoice ON Invoice.CustomerId==Customer.CustomerId
WHERE Invoice.InvoiceDate BETWEEN '2009-01-01' AND '2009-12-31'
GROUP BY Employee.EmployeeId ORDER BY SUM(Invoice.Total) DESC LIMIT 1;