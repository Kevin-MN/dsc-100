--done
select 
   p.name
    
from 
    playlist_track as pt JOIN track as t ON pt.track_id = t.track_id 
    join playlist as p ON pt.playlist_id = p.playlist_id
    join genre as g ON t.genre_id = g.genre_id
where
    g.name <> 'Rock' OR g.name <> 'Blues'
group by 
    p.name
having 
    count(g.name) > 1