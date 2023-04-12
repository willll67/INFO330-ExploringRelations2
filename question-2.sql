SELECT employees.FirstName || employees.LastName AS FullName, invoices.* FROM invoices
LEFT JOIN customers ON customers.CustomerId = invoices.CustomerId
LEFT JOIN employees ON employees.EmployeeId = customers.SupportRepId
WHERE employees.Title = 'Sales Support Agent'
ORDER BY FullName;


