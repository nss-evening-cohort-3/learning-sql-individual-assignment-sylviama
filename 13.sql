SELECT Track.Name AS TrackName, Artist.Name AS ArtistName, InvoiceLine.InvoiceLineId FROM InvoiceLine 
JOIN Track ON InvoiceLine.TrackId==Track.TrackId
JOIN Album ON Track.AlbumId==Album.AlbumId 
JOIN Artist ON Artist.ArtistId==Album.ArtistId;