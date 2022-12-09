select 
    c.name, AVG(f.canceled) as 'percent'
from 
    FLIGHTS as f JOIN CARRIERS as c ON f.carrier_id = c.cid
where   
    f.origin_city = 'San Diego CA'
group by 
    c.Name
having 
    AVG(f.canceled) * 100 > 1;

-- 5 returned
