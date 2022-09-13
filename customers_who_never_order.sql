# https://leetcode.com/problems/customers-who-never-order/

# Using LFET JOIN operation

SELECT c.name as Customers
FROM Customers c LEFT JOIN Orders o ON (c.id = o.customerId)
WHERE o.id IS NULL