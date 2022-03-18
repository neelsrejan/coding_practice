SELECT c.name Customers
FROM Customers c
LEFT JOIN Orders o
On c.id = o.customerId
WHERE o.customerId IS NULL
