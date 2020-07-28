/*Sameer Dehadrai Page: 1
Assignment – 11
Subqueries.*/
/*1) Write a query that uses a subquery to obtain all orders
 for the customer named Cisneros. 
 Assume you do not know his customer number (cnum).*/
select cnum from orders
where cnum=
(select cnum from customers
where cname='Cisneros');


/*2) Write a query that produces the names and 
ratings of all customers who have
above-average orders.*/
select cname,rating from customers ,orders
where onum>
(select abs(avg(onum)) from orders);

select*from orders;

/*3) Write a query that selects the total amount 
in orders for each salesperson for
whom this total is greater than 
the amount of the largest order in the table.*/

select* from customers;
select * from salespeople;
select* from orders;

select snum,sum(amt)  from orders
group  by snum
having sum(amt)>(select max(amt) from orders);

