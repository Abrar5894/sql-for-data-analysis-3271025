SELECT Customer.CustomerID,
  Customer.LastName,
  Customer.FirstName,
  COUNT(1) as NUM_ORDERS
FROM Customer
  JOIN Orders ON Customer.CustomerID = Orders.CustomerID
GROUP BY Customer.CustomerID,
  Customer.LastName,
  Customer.FirstName
ORDER BY NUM_ORDERS DESC