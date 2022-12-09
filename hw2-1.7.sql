select
    aa.Name as 'artist name', count(aa.name) as 'count'
from
    tracks as t join albums as a ON t.AlbumID = a.AlbumID join artists aa ON a.ArtistId = aa.ArtistId
where   
    t.GenreId = 6
group by 
    aa.Name;