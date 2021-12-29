
---------------catogeries--------------
create table product_categories(category_id number primary key,category_name varchar2(50));
INSERT INTO PRODUCT_CATEGORIES VALUES (101,'ELECTRONICS');
INSERT INTO PRODUCT_CATEGORIES VALUES (102,'MOBILES');


--------------product-------------------

create table product(product_id number GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1) primary key
,product_name varchar2(18),description VARCHAR2(100),standard_cost number(10),list_price number(10),category_id NUMBER(4));

INSERT INTO PRODUCT (product_name,description,standard_cost,list_price,category_id) VALUES ('KEYBOARD','COMPUTER ACCESSORIES',550,720,101);
INSERT INTO PRODUCT (product_name,description,standard_cost,list_price,category_id) VALUES ('MONITER','COMPUTER ACCESSORIES',2450,3710,101);
INSERT INTO PRODUCT (product_name,description,standard_cost,list_price,category_id) VALUES ('MOUSE','COMPUTER ACCESSORIES',170,260,101);
INSERT INTO PRODUCT (product_name,description,standard_cost,list_price,category_id) VALUES ('REDMI NOTE 10','MOBILE ACCESSORIES',10550,14720,102);
INSERT INTO PRODUCT (product_name,description,standard_cost,list_price,category_id) VALUES ('REALME 8','MOBILE ACCESSORIES',11050,16800,102);
INSERT INTO PRODUCT (product_name,description,standard_cost,list_price,category_id) VALUES ('IPHONE 12','MOBILE ACCESSORIES',110550,194000,102);
INSERT INTO PRODUCT (product_name,description,standard_cost,list_price,category_id) VALUES ('POCO X2','MOBILE ACCESSORIES',13550,18720,102);
INSERT INTO PRODUCT (product_name,description,standard_cost,list_price,category_id) VALUES ('BOAT EARPHONES','HEADPHONES',350,820,101);
INSERT INTO PRODUCT (product_name,description,standard_cost,list_price,category_id) VALUES ('OPPO RENO 6','MOBILE ACCESSORIES',13000,21800,102);
INSERT INTO PRODUCT (product_name,description,standard_cost,list_price,category_id) VALUES ('ONE PLUS 9R','MOBILE ACCESSORIES',41050,76200,102);


---------------------------employee--------------------------------------

--drop table employees;
create table employees(employee_id number GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1) primary key,first_name varchar2(18),last_name varchar2(10),email varchar2(30),phone varchar2(10),hire_date date,manager_id varchar2(10),job_title varchar2(20));

alter table employees modify job_title varchar2(20);

insert into employees(first_name,last_name,email,phone,hire_date,manager_id,job_title)  values('Praveen','Kumar','praveenkumar@gmail.com','9573759399','22-aug-2020',301,'sales');
insert into employees(first_name,last_name,email,phone,hire_date,manager_id,job_title) values('Thamarai','Selvan','thamaraiselvan@gmail.com','8975687456','12-jun-2020',202,'accounts');
insert into employees(first_name,last_name,email,phone,hire_date,manager_id,job_title) values('hemnaath','surya','hemnaathrsurya@gmail.com','9042402399','18-oct-2021',303,'developement');
insert into employees(first_name,last_name,email,phone,hire_date,manager_id,job_title) values('ajeeth','Kumar','ajeethkumar@gmail.com','8863129067','02-sep-2021',301,'sales');
insert into employees(first_name,last_name,email,phone,hire_date,manager_id,job_title) values('sudhakar','ips','sudhakarips@gmail.com','8955379800','17-apr-2020',301,'sales');
insert into employees(first_name,last_name,email,phone,hire_date,manager_id,job_title) values('Shyam','Sundar','shyamsundar@gmail.com','9996483122','30-nov-2020',302,'accounts');
insert into employees(first_name,last_name,email,phone,hire_date,manager_id,job_title) values('Akash','Varma','akashvarma@gmail.com','9573759399','22-aug-2020',303,'developement');
insert into employees(first_name,last_name,email,phone,hire_date,manager_id,job_title) values('madhan','charavar','madhanchararvarthy@gmail.com','6795317549','31-dec-2020',303,'developement');
insert into employees(first_name,last_name,email,phone,hire_date,manager_id,job_title) values('Berbin','Jose','berbinjose@gmail.com','8989561200','15-aug-2021',301,'sales');
insert into employees(first_name,last_name,email,phone,hire_date,manager_id,job_title) values('Vishnu','vel','vishnuvel@gmail.com','8862890571','07-jul-2021',301,'sales');


------------------------------customer-------------------------

create table customers(customer_id number GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1) primary key,name varchar2(18),address varchar2(50),website varchar2(20),credit_limit number);


insert into customers (name,address,website,credit_limit) values('Harsha','Hydrabad','cycle.com',30000);
insert into customers (name,address,website,credit_limit) values('Abijo','chennai','abijo.com',20000);
insert into customers (name,address,website,credit_limit) values('Annie','villipuram','anniefaustina.com',15000);
insert into customers (name,address,website,credit_limit) values('Clinton','Nagercoil','clinton007.com',24000);
insert into customers (name,address,website,credit_limit) values('Devika','Chidambaran','devikarani.com',2000000);
insert into customers (name,address,website,credit_limit) values('Ajay','Tirunelveli','thukudurai.com',70000);
insert into customers (name,address,website,credit_limit) values('Christina','Tirunelveli','rodrigo.com',20000);
insert into customers (name,address,website,credit_limit) values('Jenusha','Nagercoil','jenutherz.om',84000);
insert into customers (name,address,website,credit_limit) values('Dhilipan','Karaikudi','dondhilip.com',30000);
insert into customers (name,address,website,credit_limit) values('Mohan','Caddalur','mohanprabhu.com',80000);
insert into customers (name,address,website,credit_limit) values('Immanuel','Madurai','nakkupuchi.com',15000);
insert into customers (name,address,website,credit_limit) values('Aswin','velachery','pkaswin.com',24000);
insert into customers (name,address,website,credit_limit) values('Ashwitha','Kochin','lakshmy.com',2000000);
insert into customers (name,address,website,credit_limit) values('Obuli','Salem','santhosh.com',90000);
insert into customers (name,address,website,credit_limit) values('Madhu','Kovai','natchiyar.com',20000);


-----------------------------orders-----------------------------------

create table orders(order_id number GENERATED ALWAYS AS IDENTITY(START WITH 1 INCREMENT BY 1) primary key
,customer_id number,foreign key(customer_id) references customers(customer_id),status varchar2(15)
,salesman_id number,foreign key(salesman_id) references employees(employee_id),order_date date);


insert into orders (customer_id,status,salesman_id,order_date) values(015,'Accepted',009,'14-feb-2021');
insert into orders (customer_id,status,salesman_id,order_date) values(001,'Delivered',001,'14-feb-2021');
insert into orders (customer_id,status,salesman_id,order_date) values(003,'Accepted',010,'22-jan-2021');
insert into orders (customer_id,status,salesman_id,order_date) values(005,'Cancelled',004,'8-mar-2021');
insert into orders (customer_id,status,salesman_id,order_date) values(004,'Accepted',004,'13-mar-2021');
insert into orders (customer_id,status,salesman_id,order_date) values(002,'Deliverd',005,'3-apr-2021');
insert into orders (customer_id,status,salesman_id,order_date) values(003,'Delivered',010,'4-feb-2021');
insert into orders (customer_id,status,salesman_id,order_date) values(005,'Accepted',009,'1-dec-2021');
insert into orders (customer_id,status,salesman_id,order_date) values(001,'Cancelled',005,'18-jun-2021');
insert into orders (customer_id,status,salesman_id,order_date) values(003,'Delivered',004,'25-aug-2021');
insert into orders (customer_id,status,salesman_id,order_date) values (012,'accepted',001,'02-dec-2021');
insert into orders (customer_id,status,salesman_id,order_date) values (013,'delivered',004,'24-jun-2020');
insert into orders (customer_id,status,salesman_id,order_date) values (014,'delivered',005,'31-dec-2021');
insert into orders (customer_id,status,salesman_id,order_date) values (015,'canceled',009,'21-sep-2020');
insert into orders (customer_id,status,salesman_id,order_date) values (012,'accepted',010,'07-jun-2021');
insert into orders (customer_id,status,salesman_id,order_date) values (013,'delivered',001,'05-nov-2020');
insert into orders (customer_id,status,salesman_id,order_date) values (014,'canceled',004,'15-sep-2021');
insert into orders (customer_id,status,salesman_id,order_date) values (015,'canceled',005,'09-oct-2020');


 
 select * from employees;
--drop table orders cascade constraints ;
--alter table orders modify salesman_id number(10);
--alter table orders add foreign key(salesman_id) references employees(employee_id);
select * from order_items;
----------------------------order_items---------------------------------------------

create table order_items(order_id number,foreign key(order_id)REFERENCES orders(order_id),item_id number,product_id VARCHAR2(10),quantity number,unit_price number);
select * from order_items;

commit;
--alter table order_items add foreign key(product_id) references products(product_id);
select * from product;
insert into order_items (order_id,item_id,product_id,quantity,unit_price) values (1,101,1,2,2*(select list_price from product where product_id=1));
insert into order_items (order_id,item_id,product_id,quantity,unit_price) values (2,102,2,3,3*(select list_price from product where product_id=2));
insert into order_items (order_id,item_id,product_id,quantity,unit_price) values (3,103,3,7,7*(select list_price from product where product_id=3));
insert into order_items (order_id,item_id,product_id,quantity,unit_price) values (4,104,4,1,1*(select list_price from product where product_id=4));
insert into order_items ((order_id,item_id,product_id,quantity,unit_price) values (5,102,5,9,9*(select list_price from product where product_id=5));
insert into order_items (order_id,item_id,product_id,quantity,unit_price) values (6,105,6,3,3*(select list_price from product where product_id=6));
insert into order_items (order_id,item_id,product_id,quantity,unit_price) values (7,103,7,5,5*(select list_price from product where product_id=7));


-------------------------------------------------------------------------------

CREATE OR REPLACE PACKAGE SALES AS
PROCEDURE ADD_PRODUCT_DETAILS(
--add product
PRO_NAME product.product_name%type,
PRO_DESC product.description%TYPE,
PRO_STANDCOST product.standard_cost%TYPE,
PRO_LISTPRICE product.list_price%TYPE,
PRO_CATEGORYID product.category_id%type,
PROD_STATUS OUT VARCHAR2,PROD_ERROR OUT VARCHAR2);
--Remove product
PROCEDURE REMOVE_PRODUCT(PRO_ID product.product_id%TYPE,PROD_STATUS OUT VARCHAR2,PROD_ERROR OUT VARCHAR2);
--add employee
 PROCEDURE ADD_EMPLOYEES(
  EMP_FNAME employees.first_name%type,
  EMP_LNAME employees.last_name%type,
  EMP_EMAIL employees.email%type,
  EMP_PHONE employees.phone%type,
  EMP_HIRE employees.hire_date%type,
  EMP_MID employees.manager_id%type,
  EMP_JTITLE employees.job_title%type,E_STATUS out varchar2,E_ERROR out varchar2);
--remove employees
 PROCEDURE REMOVE_EMPLOYEES(EMP_ID employees.employee_id%type,E_STATUS out varchar2,E_ERROR out varchar2);
--ADD CUSTOMERS
 PROCEDURE ADD_CUSTOMERS(
   CUS_NAME customers.name%type,
   CUS_ADDRESS customers.address%type,
   CUS_WEBSITE customers.website%type,
   CUS_CREDIT customers.credit_limit%type,C_STATUS out varchar2,C_ERROR out varchar2);
--remove customer
  PROCEDURE REMOVE_CUSTOMERS(CUS_ID customers.customer_id%type,C_STATUS out varchar2,C_ERROR out varchar2);
--ADD ORDERS
 PROCEDURE ADD_ORDERS(
 ORD_CUS_ID orders.customer_id%type,
 ORD_STATUS orders.status%TYPE,
 ORD_SALES_ID orders.salesman_id%TYPE,
 ORD_DATE orders.order_date%TYPE,O_STATUS OUT VARCHAR2,O_ERROR OUT VARCHAR2);
--REMOVE ORDERS
PROCEDURE CANCEL_ORDERS(ORD_ID orders.order_id%TYPE,O_STATUS OUT VARCHAR2,O_ERROR OUT VARCHAR2);
--ADD ORDER ITEMS
PROCEDURE ADD_ORDER_ITEMS(
ORDITM_ORD_ID order_items.order_id%type,
ORDITM_ITEM_ID order_items.item_id%type,
ORDITM_PROD_ID order_items.product_id%type,
ORDITM_QNTY order_items.quantity%type,
ORDITM_UNITPRICE order_items.unit_price%type,OITM_STATUS OUT VARCHAR2,OITM_ERROR OUT VARCHAR2);
--REMOVE ORDER_ITEMS
PROCEDURE REMOVE_ORDER_ITEMS(ORDITM_ORDER_ID order_items.order_id%type,OITM_STATUS OUT VARCHAR2,OITM_ERROR OUT VARCHAR2);
--ADD CATEGORY--
PROCEDURE ADD_CATEGORY(
CATEGORIES_ID product_categories.category_id%TYPE,
CATEGORIES_NAME product_categories.category_name%TYPE,CAT_STATUS OUT VARCHAR2,CAT_ERROR out VARCHAR2);
--REMOVE CATEGORY
PROCEDURE REMOVE_CATEGORY(CATEGORIES_ID product_categories.category_id%TYPE,CAT_STATUS OUT VARCHAR2,CAT_ERROR out VARCHAR2);
END SALES;  
/





CREATE OR REPLACE PACKAGE BODY SALES AS
PROCEDURE ADD_PRODUCT_DETAILS(
PRO_NAME product.product_name%type,
PRO_DESC product.description%TYPE,
PRO_STANDCOST product.standard_cost%TYPE,
PRO_LISTPRICE product.list_price%TYPE,
PRO_CATEGORYID product.category_id%type,
PROD_STATUS OUT VARCHAR2,PROD_ERROR OUT VARCHAR2)
IS
BEGIN
  INSERT INTO product (product_name,description,standard_cost,list_price,category_id)
  VALUES(PRO_NAME,PRO_DESC,PRO_STANDCOST,PRO_LISTPRICE,PRO_CATEGORYID);
  IF SQL%ROWCOUNT>0
  THEN PROD_STATUS:='PRODUCT INSERTED';
  END IF;
  COMMIT;
  EXCEPTION
  WHEN OTHERS THEN
  PROD_STATUS:='NO DATA INSERTED';
  PROD_ERROR:=sqlcode||sqlerrm;
END ADD_PRODUCT_DETAILS;

PROCEDURE REMOVE_PRODUCT(PRO_ID product.product_id%TYPE,PROD_STATUS OUT VARCHAR2,PROD_ERROR OUT VARCHAR2) IS
BEGIN
   DELETE FROM product WHERE product_id=PRO_ID;
    IF SQL%Found
  THEN PROD_STATUS:='DATA DELETED';
  END IF;
  COMMIT;
  EXCEPTION
  WHEN OTHERS THEN
  PROD_STATUS:='NO DATA DELETED';
  PROD_ERROR:=sqlcode||sqlerrm;
END REMOVE_PRODUCT;

 PROCEDURE ADD_EMPLOYEES(
  EMP_FNAME employees.first_name%type,
  EMP_LNAME employees.last_name%type,
  EMP_EMAIL employees.email%type,
  EMP_PHONE employees.phone%type,
  EMP_HIRE employees.hire_date%type,
  EMP_MID employees.manager_id%type,
  EMP_JTITLE employees.job_title%type,E_STATUS out varchar2,E_ERROR out varchar2)IS
  BEGIN
  INSERT INTO employees(first_name,last_name,email,phone,hire_date,manager_id,job_title)
     VALUES(EMP_FNAME,EMP_LNAME,EMP_EMAIL,EMP_PHONE,EMP_HIRE,EMP_MID,EMP_JTITLE);
     if sql%rowcount>0
         then E_STATUS:='employee inserted';
         end if;
         commit;
         EXCEPTION
         when others then
         E_STATUS:='employee data not inserted';
         E_ERROR:=sqlcode||sqlerrm;
  END ADD_EMPLOYEES;
 
 PROCEDURE REMOVE_EMPLOYEES(EMP_ID employees.employee_id%type,E_STATUS out varchar2,E_ERROR out varchar2)IS
  BEGIN
      DELETE FROM employees WHERE employee_id=EMP_ID;
        if sql%rowcount>0
         then  E_STATUS:='delteded';
         end if;
        if sql%rowcount=0
         then  E_STATUS:='not deleted';
         end if;
         commit;
         EXCEPTION
         when no_data_found then
         DBMS_OUTPUT.PUT_LINE('product id does not found');
         when others then
         E_STATUS:='not deleted';
         E_ERROR:=sqlcode||sqlerrm;
 END REMOVE_EMPLOYEES;
 
 PROCEDURE ADD_CUSTOMERS(
   CUS_NAME customers.name%type,
   CUS_ADDRESS customers.address%type,
   CUS_WEBSITE customers.website%type,
   CUS_CREDIT customers.credit_limit%type,C_STATUS out varchar2,C_ERROR out varchar2)IS
   BEGIN
   INSERT INTO customers(name,address,website,credit_limit)
   VALUES(CUS_NAME,CUS_ADDRESS,CUS_WEBSITE,CUS_CREDIT);
   if sql%rowcount>0
         then C_STATUS:='data inserted';
         end if;
         commit;
         EXCEPTION
         when others then
         C_STATUS:='data not inserted';
         C_ERROR:=sqlcode||sqlerrm;
   END ADD_CUSTOMERS;

  PROCEDURE REMOVE_CUSTOMERS(CUS_ID customers.customer_id%type,C_STATUS out varchar2,C_ERROR out varchar2)IS
   BEGIN
   DELETE FROM customers WHERE customer_id=CUS_ID;
   if sql%rowcount>0
         then C_STATUS:='deleted';
         end if;
         commit;
         EXCEPTION
         when no_data_found then
         DBMS_OUTPUT.PUT_LINE('customer id does not found');
         when others then
         C_STATUS:='not found';
         C_ERROR:=sqlcode||sqlerrm;
   END REMOVE_CUSTOMERS;
   
PROCEDURE ADD_ORDERS(
 ORD_CUS_ID orders.customer_id%type,
 ORD_STATUS orders.status%TYPE,
 ORD_SALES_ID orders.salesman_id%TYPE,
 ORD_DATE orders.order_date%TYPE,O_STATUS OUT VARCHAR2,O_ERROR OUT VARCHAR2)IS
  BEGIN
 INSERT INTO orders(customer_id ,status ,salesman_id ,order_date)
 VALUES(ORD_CUS_ID,ORD_STATUS,ORD_SALES_ID,ORD_DATE);
 if sql%rowcount>0
         then O_STATUS:='data inserted';
         end if;
         commit;
         EXCEPTION
         when others then
         O_STATUS:='not inserted';
         O_ERROR:=sqlcode||sqlerrm;
 END ADD_ORDERS;

PROCEDURE CANCEL_ORDERS(ORD_ID orders.order_id%TYPE,O_STATUS OUT VARCHAR2,O_ERROR OUT VARCHAR2)IS
 BEGIN
 UPDATE orders SET status='cancelled' where order_id=ORD_ID;
 if sql%rowcount>0
         then O_STATUS:='ORDER CANCELED';
         end if;
         commit;
         EXCEPTION
         when others then
         O_STATUS:='not CANCELED';
         O_ERROR:=sqlcode||sqlerrm;
 END CANCEL_ORDERS;

PROCEDURE ADD_ORDER_ITEMS(
ORDITM_ORD_ID order_items.order_id%type,
ORDITM_ITEM_ID order_items.item_id%type,
ORDITM_PROD_ID order_items.product_id%type,
ORDITM_QNTY order_items.quantity%type,
ORDITM_UNITPRICE order_items.unit_price%type,OITM_STATUS OUT VARCHAR2,OITM_ERROR OUT VARCHAR2)IS
BEGIN
 INSERT INTO order_items(order_id ,item_id ,product_id ,quantity ,unit_price)
 values(ORDITM_ORD_ID,ORDITM_ITEM_ID,ORDITM_PROD_ID,ORDITM_QNTY,ORDITM_UNITPRICE);
 if sql%rowcount>0
         then OITM_STATUS:='inserted';
         end if;
         commit;
         EXCEPTION
         when others then
        OITM_STATUS:='not inserted';
        OITM_ERROR:=sqlcode||sqlerrm;
 END ADD_ORDER_ITEMS;

PROCEDURE REMOVE_ORDER_ITEMS(ORDITM_ORDER_ID order_items.order_id%type,OITM_STATUS OUT VARCHAR2,OITM_ERROR OUT VARCHAR2)IS
BEGIN
   DELETE FROM order_items WHERE order_id=ORDITM_ORDER_ID;
   if sql%rowcount>0
         then OITM_STATUS:='order items removed';
         end if;
         commit;
         EXCEPTION
         when others then
        OITM_STATUS:='not removed';
        OITM_ERROR:=sqlcode||sqlerrm;
   END REMOVE_ORDER_ITEMS;
   
PROCEDURE ADD_CATEGORY(  
CATEGORIES_ID product_categories.category_id%TYPE,
CATEGORIES_NAME product_categories.category_name%TYPE,CAT_STATUS OUT VARCHAR2,CAT_ERROR out VARCHAR2)IS
BEGIN
INSERT INTO product_categories(category_id ,category_name)
 values(CATEGORIES_ID,CATEGORIES_NAME);
 if sql%rowcount>0
         then CAT_STATUS:='inserted';
         end if;
         commit;
         EXCEPTION
         when others then
        CAT_STATUS:='not inserted';
        CAT_ERROR:=sqlcode||sqlerrm;
 END ADD_CATEGORY;

--REMOVE CATEGORY
PROCEDURE REMOVE_CATEGORY(CATEGORIES_ID product_categories.category_id%TYPE,CAT_STATUS OUT VARCHAR2,CAT_ERROR out VARCHAR2)IS
BEGIN
   DELETE FROM product_categories WHERE category_id=CATEGORIES_ID;
   if sql%rowcount>0
         then CAT_STATUS:='data removed';
         end if;
         commit;
         EXCEPTION
         when others then
        CAT_STATUS:='not removed';
       CAT_ERROR:=sqlcode||sqlerrm;
   END REMOVE_CATEGORY;
END SALES;
/
SELECT * FROM PRODUCT;
select * from employees;
select * from customers;
SELECT * FROM ORDER_ITEMS;
SELECT * FROM ORDERS;
SELECT * FROM product_categories;
/
set serveroutput on;
DECLARE
 PROV_STATUS VARCHAR2(100);
 PROV_ERROR VARCHAR(100);
 PRODUCT_ID product.product_id%type:='&enter_the_id';
 BEGIN
  SALES.REMOVE_PRODUCT(PRODUCT_ID,prov_status,prov_error);
  DBMS_OUTPUT.PUT_LINE(PROV_STATUS||''||PROV_ERROR);
END;
/
select * from products;
desc products;

Declare
PRO_STATUS VARCHAR2(50);
PRO_ERROR VARCHAR(50);
BEGIN
  SALES.add_product_details('CHAIR','plastic',500,600,56,pro_status,pro_error);
   DBMS_OUTPUT.PUT_LINE(PRO_STATUS||''||PRO_ERROR);
END;
/
select*from employees;
Declare
EMP_STATUS VARCHAR2(50);
EMP_ERROR VARCHAR(50);
BEGIN
  SALES.add_employees('dharshan','ravi','dharshanravi@gmail.com',6385561837,'15-12-2020',31,'accontant',EMP_status,EMP_error);
   DBMS_OUTPUT.PUT_LINE(EMP_STATUS||''||EMP_ERROR);
END;
/
DECLARE
 EMP_STATUS VARCHAR2(100);
 EMP_ERROR VARCHAR(100);
 EMP_ID employees.employee_id%type:='&enter_the_id';
 BEGIN
  sales.remove_employees(EMP_ID, EMP_STATUS,EMP_ERROR);
  DBMS_OUTPUT.PUT_LINE( EMP_STATUS||''||EMP_ERROR);
END;
/
commit;
select * from customers;
Declare
CUS_STATUS VARCHAR2(50);
CUS_ERROR VARCHAR(50);
BEGIN
  sales.add_customers('dharshan','310 - 15th Ave. S. Suite 4D','www.amazon.com',3100,CUS_STATUS,CUS_ERROR);
   DBMS_OUTPUT.PUT_LINE(CUS_STATUS||''||CUS_ERROR);
END;
/
DECLARE
 CUS_STATUS VARCHAR2(100);
 CUS_ERROR VARCHAR(100);
 CUS_ID customers.customer_id%type:='&enter_the_id';
 BEGIN
  sales.remove_customers(CUS_ID,CUS_STATUS,CUS_ERROR);
  DBMS_OUTPUT.PUT_LINE(CUS_STATUS||''||CUS_ERROR);
END;
/
select * from orders;
Declare
OR_STATUS VARCHAR2(50);
OR_ERROR VARCHAR(50);
BEGIN
  sales.add_orders(1,'pending',3,'15-10-2020',OR_STATUS,OR_ERROR);
   DBMS_OUTPUT.PUT_LINE(OR_STATUS||''||OR_ERROR);
END;
/
DECLARE
OR_STATUS VARCHAR2(50);
OR_ERROR VARCHAR(50);
 ORD_ID orders.order_id%type:='&enter_the_id';
 BEGIN
  sales.cancel_orders(ORD_ID,OR_STATUS,OR_ERROR);
  DBMS_OUTPUT.PUT_LINE(OR_STATUS||''||OR_ERROR);
END;
/
select * from products;
select * from order_items;
select * from orders;
Declare
ORIT_STATUS VARCHAR2(50);
ORIT_ERROR VARCHAR(50);
BEGIN
  sales.add_order_items(6,4,1,2,9000,ORIT_STATUS,ORIT_ERROR);
   DBMS_OUTPUT.PUT_LINE(ORIT_STATUS||''||ORIT_ERROR);
END;
/
DECLARE
ORIT_STATUS VARCHAR2(50);
ORIT_ERROR VARCHAR(50);
 ORIT_ID order_items.order_id%type:='&enter_the_id';
 BEGIN
  sales.remove_order_items(ORIT_ID,ORIT_STATUS,ORIT_ERROR);
  DBMS_OUTPUT.PUT_LINE(ORIT_STATUS||''||ORIT_ERROR);
END;
/
Declare
CAT_STATUS VARCHAR2(50);
CAT_ERROR VARCHAR(50);
BEGIN
  sales.ADD_CATEGORY(13,'furnitures',CAT_STATUS,CAT_ERROR);
   DBMS_OUTPUT.PUT_LINE(CAT_STATUS||''||CAT_ERROR);
END;
/
commit;
--error--
DECLARE
CAT_STATUS VARCHAR2(50);
CAT_ERROR VARCHAR(50);
CATEGORIES_ID product_categories.category_id%TYPE:='&enter_the_id';
 BEGIN
  sales.REMOVE_CATEGORY(CATEGORIES_ID,CAT_STATUS,CAT_ERROR);
  DBMS_OUTPUT.PUT_LINE(CAT_STATUS||''||CAT_ERROR);
END;
/ 
