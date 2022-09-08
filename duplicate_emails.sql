# https://leetcode.com/problems/duplicate-emails/

SELECT email
FROM Person
GROUP BY email
HAVING count(*) > 1
# The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions.