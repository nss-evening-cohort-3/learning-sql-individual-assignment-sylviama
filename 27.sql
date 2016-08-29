SELECT Genre.Name AS GenreName, COUNT(InvoiceLine.InvoiceId)* InvoiceLine.Quantity AS Count FROM InvoiceLine
JOIN Track ON InvoiceLine.TrackId=Track.TrackId
JOIN Genre ON Track.GenreId=Genre.GenreId
GROUP BY Genre.GenreId
ORDER BY Count DESC LIMIT 1;