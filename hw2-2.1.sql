select 
    c.name as 'name', SUM(f.departure_delay) as 'delay'
from    
    FLIGHTS as f join CARRIERS as c ON f.carrier_id = c.cid
group by
    c.name;

-- 22 rows