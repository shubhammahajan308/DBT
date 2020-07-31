/*Sameer Dehadrai Page: 1
Assignment – 19
Views.*/
/*1) Create a view that shows all of the customers who have the highest ratings.*/
create view v1
	as
	select*from customers
    where rating=(select max(rating) from customers);
select * from v1;
    
/*2) Create a view that shows the number of salespeople in each city.*/
select * from salespeople;
create view v2
			as
            select city,count(city) as no_of_salespeople from salespeople
            group by city;
            
            select * from v2;
/*3) Create a view that shows the average and 
total orders for each salesperson after his or her name. 
Assume all names are unique.*/
select * from orders;
create view v3 as
select sname,avg(onum), count(onum) from salespeople
join orders using (snum)
group by sname;

select* from v3;
/*4) Create a view that shows each salesperson with multiple customers.*/
select * from salespeople;
select * from customers;
drop view multiple_customers;
create view multiple_customers
as 
select sname,cname from salespeople
join customers using (snum)
group by sname;
select*from multiple_customers;

