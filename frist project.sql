create database dreamHouse1
create table branch(
branchno varchar(20),
street varchar(20),
city varchar(20),
postcode varchar(20)
)
select * from branch
insert into branch values('b005','22 deer rd','london','sw14eh'),
('b007','16 argyll st','aberdeen','ab2 3su'),
('b003','163 main st','glasgow','g11 9qx'),
('b004','32 manse rd','bristol','bs99 1nz'),
('b002','56 clover dr','london','nw10 6eu')
create table staff(
staffno varchar(20),
fname varchar(20),
lname varchar(20),
position varchar(20),
sex char,
dob varchar(20),
salary int,
branchno varchar(20)
)
insert into staff values('sl21','john','white','manager','m','1-oct-45','30000','b005'),
('sg37','ann','beech','assistant','f','10-nov-60','12000','b003'),
('sg14','david','ford','supervisor','m','24-mar-58','18000','b003'),
('sa9','mary','howe','asistant','f','19-feb-70','9000','b007'),
('sg5','susan','brand','manager','f','3-jun-40','24000','b003'),
('sl41','julie','lee','assistant','f','13-jun-65','9000','b005')

select * from staff
create table propertyForRent(
propertyno varchar(20),
street varchar(20),
city varchar(20),
postcode varchar(20),
type varchar(20),
room varchar(20),
rent int,
ownerno int,
staffno varchar(20),
branchno varchar(20)
)
alter table propertyForRent alter column ownerno varchar(20);
select * from propertyForRent
insert into propertyForRent values('pa14','16 holhead','aberdeen','ab7 5su','house','6','650','c046','sa9','b007'),
('pl94','6 argyll st','london','nw2','flat','4','400','c087','sl41','b005'),
('pg4','6 lawrence st','glasgow','g11 9qx','flat','3','350','c040','','b003'),
('pg36','2 manor rd','glasgow','g32 4qx','flat','3','375','c093','sg37','b003'),
('pg21','18 dale rd','glasgow','g12','house','5','600','c087','sg37','b003'),
('pg16','5 novar dr','glasgow','g12 9ax','flat','4','450','c093','sg14','b003')

create table client(
clientno varchar(20),
fname varchar(20),
lname varchar(20),
telno int,
preftype varchar(20),
maxrent int,
)
alter table client alter column telno varchar(20);
select * from client
insert into client values('cr76','john','kay','0207-774-5632','flat','425'),
('cr56','aline','stewart','0141-848-1825','flat','350'),
('cr74','mike','ritchie','01475-392178','house','750'),
('cr62','mary','tregear','01224-196720','flat','600')
 create table privateowner(
 ownerno varchar(20),
 fname varchar(20),
 lname varchar(20),
 address varchar(20),
 telno varchar(20)
 )
 alter table privateowner alter column address varchar(50);
 select * from private owner
 insert into privateowner values('c046','joe','keogh','2 fergus dr,aberdeen ab2 7sx','01224-861212'),
 ('c087','carol','farrel','6 achray st,glagow g32 9dx','0141-357-7419'),
 ('c040','tina','murphy','63 well st, glasgow g42','0141-943-1728'),
 ('c093','tony','shaw','12 park pl,glasgow g40qr','0141-225-7025')

 create table viewing(
 clientno varchar(20),
 propertyno varchar(20),
 viewdate varchar(20),
 comment varchar(20)
 )
 select * from viewing
 insert into viewing values('cr56','pa14','24-may-04','to small'),
 ('cr76','pg4','20-apr-04','too remote'),
 ('cr56','pg4','26-may-04',''),
 ('cr62','pa14','14-may-04','no dining room'),
 ('cr56','pg36','28-apr-04','')

 create table registration(
 clientno varchar(20),
 branchno varchar(20),
 staffno varchar(20),
 datejoined varchar(20)
 )
 select * from registration
 insert into registration values('cr76','b005','sl41','2-jan-04'),
 ('cr56','b003','sg37','11-apr-03'),
 ('cr74','b003','sg37','16-nov-02'),
 ('cr62','b007','sa9','7-mar-03')
--distinct
select distinct salary from staff order by salary
 select distinct branchno from propertyForRent order by branchno
 --select clause
 select fname,lname from client
 -- AS statment
 select * from client
 select clientno as ClientNo,fname as Fname, telno as TellNo, preftype as PreFtype, maxrent as MaxRent from client;
 -- where clause and clouse or clouse
 select * from staff
 where sex='f' and position='manager' and salary >=12000 or sex='m'
 -- in opertor
 select * from propertyForRent
 where branchno in ('b007','b005');
 -- not in opertor
 select * from propertyForRent
 where branchno not in('b007','b005');
 -- between opertor
 select * from staff
 where dob between '1-oct-45' and '1-oct-65';
 -- select data with like operator
 where fname like 'a%';
 select * from client 
 where fname like 'm%y';
 select * from client 
 where fname like '%hn%';
 --select data with order by 
 select * from client
 order by fname;
 select * from client 
 where preftype ='flat'
 order by fname,lname;
 -- seelct with descinding 
 select * from client
 order by fname desc;
 -- select data with distinct
 select distinct preftype from client
 


 select * from branch
 select * from client
 select * from privateowner
 select * from propertyForRent
 select * from registration
 select * from staff
 select * from viewing


