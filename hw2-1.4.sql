select 
    BillingCountry, count(*) as 'count'
from 
    invoices
group by 
    BillingCountry
order by 
    BillingCountry;