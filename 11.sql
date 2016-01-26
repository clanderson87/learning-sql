SELECT InvoiceId, COUNT (InvoiceId) AS '# of invoices' FROM InvoiceLine GROUP BY InvoiceId;
