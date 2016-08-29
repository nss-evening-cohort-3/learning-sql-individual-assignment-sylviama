SELECT Employee.FirstName, Employee.LastName, COUNT(Customer.CustomerId) FROM Customer JOIN Employee ON Employee.EmployeeId= Customer.SupportRepId
GROUP BY Customer.SupportRepId;