SELECT tracks.Name AS TrackName, artists.Name AS ArtistName, invoice_items.* FROM invoice_items
LEFT JOIN tracks ON tracks.TrackId = invoice_items.TrackId
LEFT JOIN albums ON tracks.AlbumId = albums.AlbumId
LEFT JOIN artists ON albums.ArtistId = artists.ArtistId;
