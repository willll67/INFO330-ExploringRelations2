SELECT tracks.Name AS TrackName, COUNT(invoice_items.InvoiceLineId) AS Purchases FROM tracks
LEFT JOIN invoice_items ON tracks.TrackId = invoice_items.TrackId
LEFT JOIN invoices ON invoices.InvoiceId = invoice_items.InvoiceId WHERE strftime('%Y', invoices.InvoiceDate) = '2013'
GROUP BY tracks.TrackId
ORDER BY Purchases DESC
LIMIT 1;

