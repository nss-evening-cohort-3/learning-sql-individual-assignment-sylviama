SELECT Artist.Name AS ArtistName, COUNT(InvoiceLine.InvoiceId)* InvoiceLine.Quantity AS Count FROM InvoiceLine
JOIN Track ON InvoiceLine.TrackId=Track.TrackId
JOIN Album ON Track.AlbumId=Album.AlbumId
JOIN Artist ON Album.ArtistId=Artist.ArtistId
GROUP BY Artist.ArtistId
ORDER BY Count DESC LIMIT 3;