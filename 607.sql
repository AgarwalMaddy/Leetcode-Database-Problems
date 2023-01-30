SELECT s.name AS name
FROM salesperson AS s
LEFT JOIN orders AS o
using(sales_id)
LEFT JOIN company AS c
using(com_id)
GROUP BY s.sales_id
HAVING sum(c.name = 'RED') = 0 OR sum(c.name is NULL) > 0
