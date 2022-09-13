# https://leetcode.com/problems/exchange-seats/

SELECT ROW_NUMBER() OVER() id, student
FROM seat
ORDER BY IF(MOD(id, 2) = 0, id-1, id+1)

# ORDER BY happens first and rearranges the ids, in the corrected order.
# ROW_NUMBER() then assigns the new id based on the sorted order, becuase of this the gap for the case when there is an odd total doesn't matter.