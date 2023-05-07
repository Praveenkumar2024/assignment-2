create database costomers;
create table costmers
(
customer_id int not null primary key,
cust_name char(50) not null,
city char(50) not null,
grade char(30) not null,
salesman_id int not null );
insert into costmers values
(3002, "Nick Rimando","New York",100,5001),
(3007, "Brad Davis","New York",200,5001),
(3005,"Graham Zusi","California",200,5002),
(3008,"Julian Green","London",300,5002),
(3004,"Fabian Johnson","Paris",300,5006),
(3009, "Geoff Cameron","Berlin",100,5003),
(3003,"Jozy Altidor","Moscow",200,5007),
(3001,"Brad Guzan","London",250,5005);

select * from costmers;




create table salesman
(
salesman_id int not null,
name char(50) not null,
 city varchar(50) not null,
 commission int not null);
 
 insert into salesman values
 (5001,"James Hoog","New York",0.15),
(5002,"Nail Knite","Paris",0.13),
(5005,"Pit Alex","London",0.11),
(5006,"Mc Lyon","Paris",0.14),
(5007,"Paul Adam","Rome",0.13),
(5003,"Lauson Hen","San Jose",0.12);


select c.cust_name,c.city,c.grade,s.name,s.city from costmers c left join salesman s on c.salesman_id=s.salesman_id
where c.grade<300 order by c.customer_id;


