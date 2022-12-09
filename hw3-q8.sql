--done 

select 
    distinct t2.name
from 
    track as t2

EXCEPT

select 
    t.name
    
from 

    playlist_track as pt JOIN track as t ON pt.track_id = t.track_id 
    join playlist as p ON pt.playlist_id = p.playlist_id

where 
    p.name like '%90%';



