#1581. Customer Who Visited but Did Not Make Any Transactions
Select customer_id, count(v.visit_id) as 'count_no_trans' 
from Visits v 
where v.visit_id not in (select t.visit_id from Transactions t)
group by customer_id;

# 1068. Product Sales Analysis I
SELECT distinct P.product_name,S.year, S.price
FROM Sales as S LEFT JOIN Product as P
ON S.product_id=P.product_id;