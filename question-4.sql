SELECT employees.FirstName || employees.LastName AS SalesAgent, SUM(invoices.Total) AS Sales_amount FROM invoices
LEFT JOIN customers ON invoices.CustomerId = customers.CustomerId
LEFT JOIN employees ON customers.SupportRepId = employees.EmployeeId
WHERE employees.Title = 'Sales Support Agent' AND strftime('%Y', invoices.InvoiceDate) = '2010'
GROUP BY employees.EmployeeId
ORDER BY Sales_amount DESC
LIMIT 1;
