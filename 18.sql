SELECT (Employee.FirstName||" "||Employee.LastName) AS SalesAgent, ROUND(SUM(Invoice.Total),2) FROM Employee 
JOIN Customer ON Employee.EmployeeId=Customer.SupportRepId
JOIN Invoice ON Invoice.CustomerId=Customer.CustomerId
GROUP BY Employee.EmployeeId;