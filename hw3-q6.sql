--done
select 
    distinct name as carrier
from 
    flights as f join carriers as c ON f.carrier_id = c.cid
where 
    origin_city = '"San Diego CA"' AND dest_city = '"San Francisco CA"'
order by 
    carrier ASC;