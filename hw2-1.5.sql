select 
    CustomerId as customerID, sum(Total) as total
from 
    invoices
group by 
    CustomerId;
