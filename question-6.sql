SELECT tracks.TrackId, tracks.Name, tracks.Composer FROM tracks
INNER JOIN invoice_items ON invoice_items.TrackId = tracks.TrackId
INNER JOIN invoices ON invoices.InvoiceId = invoice_items.InvoiceId;
