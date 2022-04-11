SELECT Genre.Name,
       count(Genre.Name)AS tracks_sold
FROM Genre
JOIN Track ON Genre.GenreId = Track.GenreId
JOIN InvoiceLine ON Track.TrackId = InvoiceLine.TrackId
GROUP BY Genre.Name
ORDER BY tracks_sold DESC
LIMIT 10;