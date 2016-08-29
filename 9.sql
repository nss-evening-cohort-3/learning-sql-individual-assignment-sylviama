SELECT COUNT(*) FROM Invoice WHERE InvoiceDate c '2009-01-01' AND '2011-12-31';
SELECT InvoiceDate, COUNT(*) FROM Invoice WHERE InvoiceDate LIKE "2009%";
SELECT InvoiceDate, COUNT(*) FROM Invoice WHERE InvoiceDate LIKE "2010%";
SELECT InvoiceDate, COUNT(*) FROM Invoice WHERE InvoiceDate LIKE "2011%";