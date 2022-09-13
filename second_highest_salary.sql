# https://leetcode.com/problems/second-highest-salary/

SELECT max(Salary) AS SecondHighestSalary  # renaming the selected column as 'SecondHighestSalary'
FROM Employee
WHERE Salary < (SELECT max(Salary) FROM Employee)