select 
    sum(f.capacity) as 'totalcapacity'
from 
    FLIGHTS as f
where 
    (month_id = 7 AND day_of_month = 1) AND ((origin_city = 'San Diego CA' AND dest_city = 'San Francisco CA') OR (origin_city = 'San Francisco CA' AND dest_city = 'San Diego CA'))
group by 
    month_id;

-- 1 row, basically scalar value