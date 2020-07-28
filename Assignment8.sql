#1
update SALESPEOPLE
    set comm=0.12;
 #1   
 Select ONUM,SNUM ,amt*0.12 as SALESPEOPLE_COMM 
 from orders;
 
 
#2
select city,max(rating) from customers
group by city
order by city ;

#3
select rating,cname,cnum from customers
order by rating desc;

#4
select count(onum),ODATE from orders,salespeople
group by odate
order by odate DESC;