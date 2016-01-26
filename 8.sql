--Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT
Employee.FirstName as 'Sales Agent', Employee.LastName as 'Sales Agent Last Name', tbl1.'Invoice Total' as 'invoice total', tbl1.'Customer First Name' as 'Customer First Name', tbl1.'Customer Last Name' as 'Customer Last Name', tbl1.'Country' as 'Country'
FROM
(
SELECT 
Invoice.Total as 'Invoice Total', Customer.FirstName as 'Customer First Name', Customer.LastName as 'Customer Last Name', Customer.Country as 'Country', Customer.SupportRepId as 'Seller ID'
FROM Invoice
LEFT JOIN Customer ON Customer.CustomerId == Invoice.CustomerId
) AS tbl1
JOIN Employee
ON tbl1.'Seller ID'
