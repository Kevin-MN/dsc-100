select 
    a.AlbumID as 'albumId', count(a.AlbumID) as 'count'
from 
    tracks as t join albums as a ON t.AlbumID = a.AlbumID
group by 
    a.AlbumID
having 
    count(a.albumID) >= 25;

