/*Sameer Dehadrai Page: 1
Assignment – 18
Maintaining the Integrity of your Data.*/
/*1) Create a table called Cityorders. 
This will contain the same onum, amt and 
snum fields as the Orders table, and 
the same cnum and city fields as the Customers table, 
so that each customer’s order will be entered into this table 
along with his or her city. Onum will be the primary key of Cityorders.
 All of the fields in Cityorders will be constrained to match the Customers
 and Orders tables. Assume the parent keys in these tables already 
 have the proper constraints.*/
 create table orders123(
 onum int(4) primary key,
 amt int(4),
 snum int(4)
 );
 
 create table customer(
 cnum int(4) primary key,
 city varchar(10)
 );
 create table cityorders (
 onum int(4)  primary key,
 amt int(4),
 snum int(4),
 cnum int(4),
 city varchar(10),
 constraint fk_cityorders_onum foreign key(snum) 
 references orders123 (onum) ,
 constraint fk_cityorders_cnum foreign key(cnum)
 references customer (cnum)
 
 );

 
/*2) Redefine the Orders table as follows:- add a new column called prev, which will identify, for each order, 
the onum of the previous order for that current customer. Implement this with a foreign key referring to the Orders
 table itself. The foreign key should refer as well to the cnum of the customer, providing a definite enforced link
 between the current order and the one referenced.*/
 alter table orders123 add prev int(4);
 alter table orders123 add constraint fk_prev foreign key(prev) references orders(onum);
 alter table orders123 add constraint fk_cprev foreign key(prev) references customers(cnum);
 