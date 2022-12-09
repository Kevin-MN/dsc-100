--done
select 
    distinct name
from(
select  
    t1.name, a1.title
from 
    track  as t1 join album as a1 on t1.album_id = a1.album_id

EXCEPT 

select 
    t.name, title
from 
    invoice_line as i join track as t on i.track_id = t.track_id join album as a on t.album_id = a.album_id
) as cool;

