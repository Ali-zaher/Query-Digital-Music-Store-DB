SELECT MediaType.Name,
       count(Track.MediaTypeId)
FROM MediaType
JOIN Track ON MediaType.MediaTypeId = Track.MediaTypeId
GROUP BY MediaType.Name;