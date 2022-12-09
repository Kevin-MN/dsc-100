--done

select l.artist_name from (
select
    a2.name as artist_name, g.name as genre2 
from 
    track as t JOIN  genre as g on t.genre_id = g.genre_id 
    join album as a on t.album_id = a.album_id
    join artist as a2 on a.artist_id = a2.artist_id
group by 
    a2.name,g.name
order by 
    artist_name
) as l
group by 
    l.artist_name
having 
    count(genre2) >= 3