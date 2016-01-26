SELECT * FROM 
(
SELECT inv.InvoiceId, cus.SupportRepId 
FROM Invoice AS inv 
LEFT JOIN Customer AS cus 
ON inv.CustomerId = cus.CustomerId
) AS tb1
LEFT JOIN Employee 
ON tb1.SupportRepId = Employee.EmployeeId;
