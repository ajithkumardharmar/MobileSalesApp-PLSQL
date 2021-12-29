
---------Region table----------- 

Create table Region
(id int primary key,
name varchar(50)
);

insert into Region values(1,'Europe');
insert into Region values (2,'Americas');
insert into Region values (3,'Asia');
insert into Region values(4,'Middle east and africa');

select *from region;

----------Countries Table-----------

Create table Countries
(id varchar(50) primary key,
name varchar(50),
region_id int,
foreign key(region_id) references region(id)
);


insert into Countries values ('AR','ARgentina',2);

insert into Countries values ('AU','Australia',3);
insert into Countries values ('CN','China',3);
insert into Countries values ('CA','Canada',2);
insert into Countries values ('BR','BRAZIL',2);
insert into Countries values('CH','Switzerland',1);
insert into Countries values('DE','Germany',1);
insert into Countries values('DK','Denmark',1);
insert into Countries values('EG','Egpty',4);
insert into Countries values('FR','France',1);
insert into Countries values('HK','Hongkong',3);
insert into Countries values('IL','Isreal',4);
insert into Countries values('IN','India',3);
insert into Countries values('IT','Italy',1);
insert into Countries values('JP','Japan',3);
insert into Countries values('KW','Kuwait',4);
insert into Countries values('Mx','Mexico',2);
insert into Countries values('NG','Nigeria',4);
insert into Countries values('NL','Netherlands',1);
insert into Countries values('SG','Singapore',3);
insert into Countries values('UK','United Kingdom',1);
insert into Countries values('US','United States of America',2);
insert into Countries values('ZM','ZAMBIA',4);
insert into Countries values('zw','Zimbabwe',4);

select *from countries;

-------------location Table----------------

Create table location
(id varchar(50) primary key,
street_address varchar(50),
postal_code varchar(50),
city varchar(50),
state varchar(50),
country_id varchar(50),
foreign key(country_id) references countries(id)
);

insert all 
into location values(1000, '1297 via cola di rie',989, 'Roma','Roma','IT')
into location values(1100,'93091 Calle della testa', 10934,'Venice','venice','IT')
into location values(1200,'2017 ShinJUKU-KU',1689,'Tokyo','Tokyo prefecture','JP')
select * from dual;

insert into location values(1300,'9450 Kamya-Cho',6823,'Hiroshima','hiroshi','JP');
insert into location values(1400,'2014 Jabberwocky RD', 26192, 'South lake','Texas','US');

insert into location values(1600,'2007 Zagora ST',50090,'South bruncswick','New Jersey','US');
insert into location values(1700,'2004 Charade Rd',98199,'Seattle','washington','US');
insert into location values(1800,'147 Spadna Ave',97121,'Toronto','Ontario','CA');

insert into location values(2000,'40-5-12 Laogianggen',190518,'Beijing','Beijing','CN');
insert into location values(2100, '1298 VILEPARLE ed',490231,'BOMBAY','Maharasthra','IN');
insert into location values(2200,'12-98 Victoria Street',2901,'Sydney','New South wales','AU');
insert into location values(2300,'198 Clementi North',540198,'Singapore','Singapore','SG');
insert into location values(2400,'B204 Arthur ST',2345,'London','LOndon','UK');
insert into location values(3200,'MARIANO ESCOBEDO 9991',11932,'Mexico city','Distrito
federal','CN');



select *from location;  

update location set state='Singapore' where id=2000;

----------Count ,Group by , Having----------

select count (*),country_id from location group by country_id having country_id='IT';

create table dd (select * from location);

---------min,max--------------

select min (state) from location;

select max(State) from location;
------------Department Table---------------------

Create table department
(id int primary key,
name varchar(50),
location_id varchar(50),
foreign key(location_id) references location(id)
);


insert into department values(1,'Accounts',1000);
insert into department values(2,'HR',1600);
insert into department values(3,'Business Development',1800);
insert into department values(4,'IT Support',2400);
insert into department values(5,'IT',3200);

select *from department;

----------Employee Table -------------
drop table employee;
select *from employee;

Create table employee
(id int primary key,
first_name varchar2(50),
last_name varchar2(50),
email varchar2(50),
phone_number varchar2(50),
hire_datet date,
salary int,
date_of_birth date,
department_id int ,
foreign key(department_id) references department(id)
);


Insert into employee
values(1,'anu','sharma','anu@gmail.com','9864675634',
'13-08-2015',20000,'12-01-1994',5);
Insert into employee
values(2,'ananthi','sharma','ananthi@gmail.com','8608491910',
'03-8-15',22000,'21-3-94',3);
Insert into employee
values(3,'amarnath','pillai','amarnath@gmail.com','7894589654',
'03-7-04',38000,'12-1-92',4);
Insert into employee
values(4,'clinton','pritheev','clinton@gmail.com','7708480901','01-6-15',23000,'05-9-94',2);
Insert into employee
values(5,'collin','paul','collin@gmail.com','9842524655','02-6-14',30500,'26-12-93',1);
Insert into employee values(
6, 'haritha', 'mohan', 'haritha@gmail.com', '7710589123', '
22-7-14', 41000, '12-6-93', 4);
Insert into employee values
(7, 'shrihari', 'pillai', 'shrihari@gmail.com', '9842512456', '01-7-15', 21000, '01-5-94', 2);
Insert into employee values
(8, 'jeeva', 'annath', 'jeeva@gmail.com', '8608491912', '02-6-13',
28000, '23-12-91', 3);
Insert into employee values
(9, 'jimesh', 'sharma', 'jimesh@gmail.com', '9634565231', '6-5-12', 51000, '28-10-92', 1);
Insert into employee values
(10, 'giruba', 'dharan', 'giri@gmail.com', '9842524655', '02-6-12',
24000, '22-11-00', 2);
Insert into employee values
(11, 'karthiga', 'pillai', 'karthi@gmail.com', '8608491510', 
'04-8-13', 32000, '26-8-93', 4);

select *from employee;

----------Manager Table--------------

Create table manager
(employee_id int,
department_id int,
primary key(employee_id,department_id),
foreign key(employee_id) references employee(id),
foreign key(department_id) references department(id)
);

Insert into manager(department_id,employee_id) values (1,9);
Insert into manager(department_id,employee_id) values(2,9);
Insert into manager(department_id,employee_id) values(2,4);
Insert into manager(department_id,employee_id) values(3,4);
Insert into manager(department_id,employee_id) values(3,8);
Insert into manager(department_id,employee_id) values(4,8);
Insert into manager(department_id,employee_id) values(5,8);

select *from region;

select *from countries;

select *from location;


select *from department;

select *from employee;

select *from manager;


-----------Q1 query-------------

select name from countries where region_id=(select id from region where name='Europe') order by name;


-----------Q2 query------------
select country_id,state from location where country_id='CN';

select state from location where country_id=(select id from countries where name='China') order by state ;


-----------Q3 query-----------------

select *from location;

select *from countries;

select location.id,location.street_address,location.city,location.state,countries.name as country_name
from countries inner join location on  location.country_id=countries.id order by location.id  ;


-------------Q4 query------------------------
/*(Write a query to display the department name and the first name of managers of all departments. Display the records sorted in
  ascending order based on department name and then by manager name.[Use inner join or join](Q4))*/

select *from department;

select *from employee;

select *from manager;

select department.name , employee.first_name from department inner join employee on 
employee.department_id = department.id order by department.name ;

select d.name,e.first_name from department d,employee e,manager m 
where e.id = m.employee_id and m.department_id = d.id  order BY d.name;


-------------Q5------------
/* Write a query to display the first name of all employees who are managers. 
Display the records sorted in ascending order based on first name.(Q5) */

select *from employee;

select *from manager;

select employee.first_name from employee inner join manager on employee.id=manager.employee_id;


----------Q6-------------------
/*Write a query to display the first name of the managers of HR department.
Display the records sorted in ascending order based on manager name(Q6)*/

select *from employee;

select *from department;

select *from manager;


select d.name,e.first_name from employee e,department d,manager m 
where d.id=m.department_id and e.id=m.employee_id and d.name in 'HR';

--------Q7-------------
/*Write a query to display the first name of the managers of Accounts department.
Display the records sorted in ascending order based on manager name.(Q7).*/

select *from employee;

select *from department;

select *from manager;

select e.first_name,d.name from employee e,manager m,department d 
where e.id=m.employee_id and d.id=m.department_id and d.name in 'Accounts' order by e.first_name ;

--------Q8------------------------
/*Write a query to display the first name and the last 5 characters of phone numbers of all employees. Display the records sorted in ascending order based on first name.
Give an alias to the last 5 characters of phone number as phone_number(Q8).*/

select *from employee;

select substr(phone_number,length(phone_number)-4,5) as last_5_character from employee;

commit;

----------Q9----------------
/*
Write a query to display the id,entire street address and the last word of 
the street address of all entries in the location table.
Give an alias to the last word as 'last_word'.
Display the records sorted in ascending order based on last_word.(Q9)
*/

select *from location;

SELECT id,street_address,substr(street_address,length(street_address),1) as last_word from location;





