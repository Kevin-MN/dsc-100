select 
    distinct c.name, count(f.fid)

from 
    FLIGHTS as f JOIN CARRIERS as c ON f.carrier_id = c.cid
where origin_state = 'California'
group by
    f.month_id, c.name 
having 
    count(f.fid) > 5000;

    --6 rows 

    
