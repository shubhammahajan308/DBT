#1
select concat(upper(substring(sname,1,1)),
lower(substring(sname,2,length(sname)))) from s;

#2
select upper(Sname) from s; 

#3
select lower(sname) from s;

#4
select lpad(sname,25," ") from s;

#5
select replace(sname,"la","ro")
from s;

#6
select replace(sname,"l","r"),replace(sname,"a","r") from s;

#7
select sname,length(sname) from s;

#8
select * from s
where soundex(sname)=soundex('BLOKE');

select*from s;

#9
select sname,case 
when status=10 then 'ten'
when status=20 then 'twenty'
when status=30 then 'thirty'
end
from  s;

#10
select DAYNAME(curdate()) from dual;
update s
set sname="blk"
where`s#`= 's3';

savepoint abc;

insert into s values('s4','mahesh',40,'NEW JERSY');
select*From s;
rollback;
commit;
