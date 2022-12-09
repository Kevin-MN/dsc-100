--done couldn't run query terminal process killed
select 
    distinct dest_city
from 
    flights
where   
    origin_city <> '"San Diego CA"'


INTERSECT



select 
    distinct f2.dest_city
from 
    flights as f1 inner join flights as f2 ON f1.dest_city = f2.origin_city
where   
    f2.origin_city <> '"San Diego CA"' AND f2.dest_city <> '"San Diego CA"' AND f1.origin_city = '"San Diego CA"';
