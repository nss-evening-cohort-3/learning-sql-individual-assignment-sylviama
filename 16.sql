SELECT Track.Name AS Track, Album.Title AS Album, MediaType.Name AS MediaType, Genre.Name AS Genre FROM Track 
JOIN Album ON Track.AlbumId==Album.AlbumId 
JOIN MediaType ON MediaType.MediaTypeId==Track.MediaTypeId 
JOIN Genre ON Genre.GenreId==Track.GenreId;