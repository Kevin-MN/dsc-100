--done

select 
    distinct name 
from 
    artist

EXCEPT

select
    distinct a2.name 
from 
    track as t JOIN  genre as g on t.genre_id = g.genre_id 
    join album as a on t.album_id = a.album_id
    join artist as a2 on a.artist_id = a2.artist_id
where
    g.name = 'Blues';