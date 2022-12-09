--done
select 
    origin_city, sum(less180) / CAST(sum(less180) + sum(more180) AS FLOAT) * 100 as percentage
from 
    (select 
    origin_city,
CASE
    WHEN actual_time < 180 THEN 1
    ELSE 0
END less180,
CASE 
    WHEN actual_time >= 180 THEN 1
    ELSE 0
END more180
from   
    flights
) as encode180
group by 
    origin_city
order by 
    percentage ASC;
