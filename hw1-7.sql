select Name, COUNT(Name) from Albums join Artists on Albums.ArtistId = Artists.ArtistId group by Name ORDER BY COUNT(Name) DESC;