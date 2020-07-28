/*Assignment – 9
Querying Multiple Tables at Once.*/
/*#1 Write a query that lists each order number 
followed by the name of the customer who made the order.*/

select onum ,cname from customers,orders
where orders.cnum=customers.cnum;

/*#2) Write a query that gives the names of 
both the salesperson and the customer 
for each order along with the order number.*/
select  sname,cname,onum 
from salespeople,customers,orders
where orders.cnum=customers.cnum
and orders.snum=salespeople.snum;


/*#3 Write a query that produces all customers 
 serviced by salespeople with a commission above 12%. 
 Output the customer’s name, the salesperson’s name, 
 and the salesperson’s rate of commission.*/
 

Select cname,sname,comm from salespeople, customers
where customers.snum=salespeople.snum
and comm>(12/100);


/*#4 Write a query that calculates 
the amount of the salesperson’s 
commission on each order by a customer  
with a rating above 100.*/


select amt,comm  
from SALESPEOPLE,orders,CUSTOMERS
where SALESPEOPLE.snum=customers.snum and
orders.snum=customers.snum 
and rating>100

 
 