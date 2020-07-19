create database exercise1;
use exercise1;
#1
create table SEMP (
EMPNO CHAR(4),
EMPNAME CHAR(20),
BASIC FLOAT(9,2),
deptno char(2),
depthead char(4)
);
#2
create table SDEPT(
deptno char(2),
deotname char(15)
);

#3
insert into sdept values('10','development'),
("20","training");

#4
select*from sdept;
insert into Semp values('0001','SUNIL',6000,'10',NULL),
('0002','HIREN',8000,'20',NULL),
("0003","ALL",4000,"10","0001"),
('0004',"George",6000,NULL,'0002');


Create table supplier(
`S#` char(2),
Sname char(10),
status int(4),
city varchar(10));

CREATE table Parts (
`P#` char(4),
Pname varchar(10),
color varchar(8),
Weight int(4),
city varchar(10)
);

insert into S values('s1',NULL,10,NULL);

create table PROJECTS (
`#J` char(4),
Jname varchar(10),
city varchar(10)
);

create table supplier_parts_project(
`s#` char(2),
`p#` char(2),
`J#` char(2),
Qty  int(2)
);

Update supplier
set STATUS=10
where `s#`='S1';
select* from supplier;

Alter table supplier
rename to s;

Alter table projects
rename to j;

Alter table Parts
rename to P;
insert S values('s2',NULL,20,NULL);

insert S values('s3',NULL,30,NULL);

#5
select*from s;

#6
select`s#`,SNAME from s;
insert P values('p1','JACK',"Green",40,"LONDON"),
('p2',"john",'Red',45,NULL),
('P3',"Joe",'Blue',55,"LONDON");

inSert j VALUES('j1','mitchell','LONDON'),
('j2','david','athens'),
('j2','scott','paris');

#7
select pname,color from p 
where city='london';

Update s
set city='LONDON'
where `s#`='S1';

Update s
set city='athens'
where `s#`='S2';

Update s
set city='paris'
where `s#`='S3';

update j
set city="athens" 
where `#J`='J2';

#8
select* from s
where city='London';

#9
select* from s
where city IN('PARIS',"ATHENS");

#10
SELECT*FROM j
where city='athens';

#11
select*from p
where weight between 12 and 14;

#12
select*from s
where status>=20;

#13
select*from s
where city!='london';

#14
select city from s;

#15
select weight ,1000*weight as miligrams ,0.001*weight as  kilograms from p;

