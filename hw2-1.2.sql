select 
    InvoiceID as 'invoiceID', Total
from 
    invoices
where 
    BillingCountry = 'USA' OR BillingCountry = 'Canada'
order by
    InvoiceID DESC;
