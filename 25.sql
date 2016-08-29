SELECT Track.Name AS TrackName, COUNT(InvoiceLine.InvoiceId)* InvoiceLine.Quantity AS Count FROM InvoiceLine
JOIN Track ON InvoiceLine.TrackId==Track.TrackId
GROUP BY Track.TrackId 
ORDER BY Count DESC LIMIT 5;