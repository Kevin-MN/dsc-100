select
    distinct CustomerId as customerId

from 
    invoices as i join invoice_items as ii on i.InvoiceId = ii.InvoiceId
    join tracks t on ii.TrackId = t.TrackId
where t.GenreId = 6;
