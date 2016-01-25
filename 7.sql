SELECT * FROM 
(SELECT inv.InvoiceId, cus.SupportRepId FROM Invoice as inv LEFT JOIN Customer as cus ON inv.CustomerId = cus.CustomerId) as one
LEFT JOIN Employee as two ON one.SupportRepId = two.EmployeeId;
