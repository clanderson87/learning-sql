yt shows total sales made by each sales agent.

SELECT Employee.FirstName||' '||Employee.LastName AS "Sales Rep",
COUNT (Invoice.InvoiceId) AS "Total Sales"
FROM Employee
JOIN Customer
ON Customer.SupportRepId == Employee.EmployeeId
JOIN Invoice
ON Customer.CustomerId == Invoice.CustomerId
GROUP BY Employee.EmployeeId
