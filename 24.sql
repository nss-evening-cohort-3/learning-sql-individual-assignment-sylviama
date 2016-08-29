SELECT Track.Name AS TrackName, COUNT(InvoiceLine.InvoiceId)* InvoiceLine.Quantity AS Count FROM InvoiceLine
JOIN Track ON InvoiceLine.TrackId=Track.TrackId
JOIN Invoice ON InvoiceLine.InvoiceId=Invoice.InvoiceId
WHERE InvoiceDate LIKE "2013%"
GROUP BY Track.TrackId 
ORDER BY Count DESC;