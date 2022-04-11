SELECT Customer.City,
       count(Customer.City)
FROM Customer
JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
WHERE Customer.CustomerId IN
    (SELECT CustomerId
     FROM Invoice)
GROUP BY Customer.City;
