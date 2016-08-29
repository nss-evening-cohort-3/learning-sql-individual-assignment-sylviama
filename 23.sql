SELECT BillingCountry, SUM(Total) FROM Invoice 
GROUP BY BillingCountry
ORDER BY SUM(Total) DESC;