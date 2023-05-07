create database companys;
create table contact_table
(
id int not null primary key,
Email varchar(50) not null,
fname char(50) not null,
iname char(50) not null,
company_name varchar(50) not null,
active_flag int not null,
opt_out int not null);
insert into contact_table values
(123,"a@a.com","Kian","Seth","AB",1,1),
(133,"b@a.com","Neha","Seth","ABC",1,0),
(234,"c@c.com","Puru","Malik","CDF",0,0),
(342,"d@d.com","Sid","Maan","TEG",1,0);

select * from contact_table where active_flag = 1;
update contact_table set active_flag=0 where opt_out=1;
delete from contact_table  where company_name = "ABC";
insert into contact_table values(658,"mili@gmail.com","maili","mailis","DGH",1,1);
select distinct (company_name) from contact_table;
update contact_table set fname="niti" where fname="maili";


