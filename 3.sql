SELECT Customer.FirstName, Customer.LastName, invoice.invoiceid, invoice.invoicedate, invoice.billingcountry 
FROM Customer 
JOIN Invoice ON Customer.Customerid == Invoice.Customerid 
WHERE Customer.Country == "Brazil"
