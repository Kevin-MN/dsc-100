--done
select
    distinct b.origin_city, b.dest_city, b.actual_time as time
from 
    (
select 
    origin_city, max(actual_time) as cool
from 
    flights as f   
group by    
    origin_city
    ) as l, flights as b
where
    b.origin_city = l.origin_city AND b.actual_time = l.cool
order by 
    origin_city ASC, dest_city ASC;

 
