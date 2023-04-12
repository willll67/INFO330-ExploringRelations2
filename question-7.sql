SELECT tracks.TrackId, tracks.Name, tracks.Composer FROM tracks
WHERE tracks.TrackId NOT IN (SELECT invoice_items.TrackId FROM invoice_items)
ORDER BY tracks.Name;
