#1
select count(*) from orders
where odate='1990-10-03';

#2

select count(city) from customers
where city is not null;

#3
select min(amt),snum from orders
group by snum;


#4
select * from customers
where cname like 'G%' OR cname like "g%"
order by cname;

#5
select max(rating),city from customers
 group by city;


#6
select count(onum),odate from orders
group by odate;