/*Sameer Dehadrai Page: 1
Assignment – 12
Using the operators IN, ANY, and ALL.*/

/*1) Write a query that selects all customers 
whose ratings are equal to or greater than ANY 
of Serres’.*/
select *from customers;
select *from salespeople;
select *from orders;

select * from customers
where rating>=any
(select rating from customers
where snum in(select snum from salespeople 
where sname='serres')); 




/*2) Write a query using ANY or ALL 
that will find all salespeople who have 
no customers located in their city.*/
select * from salespeople
where city!=ANY
(select city from salespeople
where city='london');


/*3) Write a query that selects all orders 
for amounts greater than any for the customers 
in London.*/

select *from orders
where amt> any
(select amt from orders
where snum in (select snum from salespeople 
where CITY="LONDON" ));

/*4) Write the above query using MIN or MAX.*/

select *
from orders
where amt>Any(select min(amt) from orders,customers
		where orders.cnum= customers.cnum
        and customers.city='london');
        