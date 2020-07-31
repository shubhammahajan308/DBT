/*Sameer Dehadrai Page: 1
Assignment – 14
Entering, Deleting, and Changing Field Values.*/

/*1) Write a command that puts the following values, 
in their given order, into the salespeople table: 
city – San Jose, name – Blanco, comm – NULL, cnum – 1100.*/

insert into salespeople(city,sname,comm,snum)
values("San jose","Blanco",NULL,1100);

/*2) Write a command that removes all orders from customer 
Clemens from the Orders table.*/
select * from orders;
	delete from orders
    where CNUM in
					(select cnum from customers
					where cname="clemens");
/*3) Write a command that increases the rating 
of all customers in Rome by 100.*/
select * from customers;
savepoint abc;
update customers
	SET rating=rating-100
    where city="Rome";
    



/*4) Salesperson Serres has left the company. 
Assign her customers to Motika.*/
select *from salespeople;
select * from customers;
savepoint  abc1;
update customers
	set snum=(select snum from salespeople where sname="motika")
    where snum=(select snum from salespeople where sname="Serres");
	