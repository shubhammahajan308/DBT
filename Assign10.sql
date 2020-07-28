
/*1) Write a query that produces all pairs 
of salespeople who are living in the same city. 
Exclude combinations of salespeople 
with themselves as well as duplicate rows with the 
order reversed.*/

SELECT m.sname,
       n.sname,
       m.city
FROM salespeople m,
     salespeople n
WHERE m.city=n.city
  AND m.sname<n.sname;

/*2) Write a query that produces the names 
 and cities of all customers with the same rating as Hoffman.*/

select cname,city,rating 
from customers
where rating=(select rating from customers
where cname="hoffman");

 select a.cname,b.city from customers a,
 customers b 
 where a.cname=b.cname and 
 a.rating=(select rating from customers 
 where cname='Hoffman');

