yt shows all Invoices but includes the # of invoice line items.

SELECT Invoice.*, 
COUNT (InvoiceLine.InvoiceLineId)
FROM Invoice
JOIN InvoiceLine
ON Invoice.InvoiceID == InvoiceLine.InvoiceID
GROUP BY Invoice.InvoiceID
