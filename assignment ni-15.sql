/*Sameer Dehadrai Page: 1
Assignment – 15
Using Subqueries with DML Commands.*/
/*1) Assume there is a table called Multicust, 
with all of the same column definitions as 
Salespeople. Write a command that inserts all 
salespeople with more than one customer into 
this table.*/

create table multicast as select * from salespeople
where snum in (select snum from customers group by snum
having count(cnum)>1);

select * from multicast;

/*2) Write a command that deletes all
 customers with no current orders.*/
delete from customers where cnum not in(select cnum from orders);
select * from orders;
select * from customers; 

/*3) Write a command that increases 
by twenty percent the commissions of 
all salespeople with total orders above Rs. 3,000.*/
update salespeople
Set comm=comm*1.20
where snum in
(SELECT snum
     FROM orders
     WHERE amt>300);
     
select * from salespeople;