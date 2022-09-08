# https://leetcode.com/problems/combine-two-tables
# LEFT Join will ensure that all rows of the left table are included in the answer regardless of whether the corresponding right table has or not any value, (regardless if there is an address for each of those people).

SELECT FirstName, LastName, City, State FROM Person p
LEFT JOIN Address a ON a.PersonId = p.PersonId
