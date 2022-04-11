# Query-Digital-Music-Store-DB
Query a digital music store data base and come up with insights 
## Introduction 
investigate ERD, run relevant SQL queries to answer statistical questions about the business 
## Installation 
DB Browser (SQLite) was used  
db = chinook  
## SQL
#### one
SELECT Artist.Name,  
       count(InvoiceLine.TrackId)  
FROM Artist  
JOIN Album ON Artist.ArtistId = Album.ArtistId  
JOIN Track ON Album.AlbumId = Track.AlbumId  
JOIN InvoiceLine ON Track.TrackId = InvoiceLine.TrackId  
GROUP BY Artist.Name  
ORDER BY 2 DESC  
LIMIT 10;  
#### two
SELECT MediaType.Name,
       count(Track.MediaTypeId)
FROM MediaType
JOIN Track ON MediaType.MediaTypeId = Track.MediaTypeId
GROUP BY MediaType.Name;
#### three
SELECT Genre.Name,  
       count(Genre.Name)AS tracks_sold  
FROM Genre  
JOIN Track ON Genre.GenreId = Track.GenreId  
JOIN InvoiceLine ON Track.TrackId = InvoiceLine.TrackId  
GROUP BY Genre.Name  
ORDER BY tracks_sold DESC  
LIMIT 10;  
#### four
SELECT Customer.City,  
       count(Customer.City)  
FROM Customer  
JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId  
WHERE Customer.CustomerId IN  
    (SELECT CustomerId  
     FROM Invoice)  
GROUP BY Customer.City;  
## Outcome 
#### check attached PDF for data visualization 

