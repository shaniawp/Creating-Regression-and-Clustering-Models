SELECT "marital_status", avg(age) from customer
group by "marital_status";

SELECT "gender", avg(age) from customer
group by "gender";



SELECT s.storename, sum(t.qty) as sum_qty
FROM store as s
JOIN transaction as t
ON s.storeid = t.storeid
GROUP BY s.storename
ORDER BY sum_qty desc
LIMIT 1;



SELECT p."product_name", sum (t.totalamount) as sum_amount
FROM product as p
JOIN transaction as t
ON p.productid = t.productid
GROUP BY p."product_name"
ORDER BY sum_amount DESC
LIMIT 1;
