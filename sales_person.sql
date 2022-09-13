# https://leetcode.com/problems/sales-person/

SELECT salesperson.name
FROM orders o JOIN company c ON (o.com_id = c.com_id AND c.name = 'RED') #(This is called filtering during the join, as where condition will filter only after both the joins are completed)
RIGHT JOIN salesperson ON salesperson.sales_id = o.sales_id
WHERE o.sales_id IS NULL

# The first inner join creates a view for just 'RED' orders
# The right join ensures all salespersons are included (even those who do not have RED orders)
# The WHERE IS NULL gives salespersons who did not have any RED orders due to the right join

# Now here right join is happening with the view created from the first query and not with the original orders and company table. Right join makes sure all the rows (sales_id) from salesperson table is selected. 
# Since the view created in part 1 has rows (sales_id) only for 'RED', rest of the values against other sales_id will be null.
# So if you uncomment the where condition, all those salespersons will get selected, who has never done any business with 'RED'.