SELECT customers.FirstName || customers.LastName AS FullName, invoices.InvoiceId, invoices.InvoiceDate, invoices.BillingCountry FROM customers
JOIN invoices ON customers.CustomerId = invoices.CustomerId
WHERE invoices.BillingCountry = 'Brazil'; 