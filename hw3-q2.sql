--done

select 
    distinct origin_city as city
from 
    flights

EXCEPT

select 
    distinct origin_city
from 
    flights
where 
    actual_time >= 180


order by    
    city asc;
