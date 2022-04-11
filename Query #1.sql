SELECT Artist.Name,
       count(InvoiceLine.TrackId)
FROM Artist
JOIN Album ON Artist.ArtistId = Album.ArtistId
JOIN Track ON Album.AlbumId = Track.AlbumId
JOIN InvoiceLine ON Track.TrackId = InvoiceLine.TrackId
GROUP BY Artist.Name
ORDER BY 2 DESC
LIMIT 10;