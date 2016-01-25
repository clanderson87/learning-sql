ELECT
Employee.FirstName as 'Sales Agent', Employee.LastName as 'Sales Agent Last Name', lerft.'Invoice Total' as 'invoice total', lerft.'Customer First Name' as 'Customer First Name', lerft.'Customer Last Name' as 'Customer Last Name', lerft.'Country' as 'Country'
FROM
(
SELECT 
Invoice.Total as 'Invoice Total', Customer.FirstName as 'Customer First Name', Customer.LastName as 'Customer Last Name', Customer.Country as 'Country', Customer.SupportRepId as 'Seller ID'
FROM Invoice
LEFT JOIN Customer ON Customer.CustomerId == Invoice.CustomerId
) AS lerft
JOIN Employee
ON lerft.'Seller ID'
