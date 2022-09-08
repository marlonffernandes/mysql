# https://leetcode.com/problems/employees-earning-more-than-their-managers

SELECT e.Name as Employee
FROM Employee e, Employee m
WHERE e.ManagerId IS NOT NULL AND e.ManagerId = m.ID AND e.Salary > m.Salary