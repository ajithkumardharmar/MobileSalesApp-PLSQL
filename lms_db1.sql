
------------LMS_TAMBLE-----------

CREATE TABLE LMS_MEMBERS
(
MEMBER_ID Varchar(10),
MEMBER_NAME Varchar(30) NOT NULL,
CITY Varchar(20),
DATE_REGISTER Date NOT NULL,
DATE_EXPIRE Date ,
MEMBERSHIP_STATUS Varchar(15)NOT NULL,
Constraint LMS_cts1 PRIMARY KEY(MEMBER_ID)
);


Insert into LMS_MEMBERS
Values('LM001', 'AMIT', 'CHENNAI', '12-02-2012', '
11-02-2013','Temporary');
Insert into LMS_MEMBERS
Values('LM002', 'ABDHUL', 'DELHI', '10-04-2012', '09-04-2013','Temporary');
Insert into LMS_MEMBERS
Values('LM003', 'GAYAN', 'CHENNAI', TO_DATE('2012-05-13','YYYY-MM-DD'),TO_DATE('2013-05-12','YYYY-MM-DD'),
'Permanent');
Insert into LMS_MEMBERS
Values('LM004', 'RADHA', 'CHENNAI', TO_DATE('2012-04-22','YYYY-MM-DD'),TO_DATE( '2013-04-21','YYYY-MM-DD'),
'Temporary');
Insert into LMS_MEMBERS
Values('LM005', 'GURU', 'BANGALORE',TO_DATE( '2012-03-30','YYYY-MM-DD'),TO_DATE( '2013-05-
16','YYYY-MM-DD'),'Temporary');
Insert into LMS_MEMBERS
Values('LM006', 'MOHAN', 'CHENNAI',TO_DATE( '2012-04-12','YYYY-MM-DD'),TO_DATE( '2013-05-
16','YYYY-MM-DD'),'Temporary');

SELECT *FROM lms_members;


------------LMS_SUPPLIERS_DETAILS----------------

Create table LMS_SUPPLIERS_DETAILS
(
SUPPLIER_ID Varchar(3),
SUPPLIER_NAME Varchar(30) NOT NULL,
ADDRESS Varchar(50),
CONTACT NUMBER NOT NULL,
EMAIL Varchar(15) NOT NULL,
Constraint LMS_cts2 PRIMARY KEY(SUPPLIER_ID)
);

Insert into LMS_SUPPLIERS_DETAILS
Values ('S01','SINGAPORE SHOPPEE', 'CHENNAI',
9894123555,'sing@gmail.com');
Insert into LMS_SUPPLIERS_DETAILS
Values ('S02','JK Stores', 'MUMBAI', 9940123450 ,'jks@yahoo.com');
Insert into LMS_SUPPLIERS_DETAILS
Values ('S03','ROSE BOOK STORE', 'TRIVANDRUM',
9444411222,'rose@gmail.com');
Insert into LMS_SUPPLIERS_DETAILS
Values ('S04','KAVARI STORE', 'DELHI', 8630001452,'kavi@redif.com');
Insert into LMS_SUPPLIERS_DETAILS
Values ('S05','EINSTEN BOOK GALLARY', 'US',
9542000001,'eingal@aol.com');
Insert into LMS_SUPPLIERS_DETAILS
Values ('S06','AKBAR STORE', 'MUMBAI',7855623100 ,'akbakst@aol.com');




----------------LMS_FINE_DETAILS-------


Create table LMS_FINE_DETAILS
(
FINE_RANGE Varchar(3),
FINE_AMOUNT decimal(10,2) NOT NULL,
Constraint LMS_cts3 PRIMARY KEY(FINE_RANGE)
);


Insert into LMS_FINE_DETAILS Values('R0', 0);
Insert into LMS_FINE_DETAILS Values('R1', 20);
insert into LMS_FINE_DETAILS Values('R2', 50);
Insert into LMS_FINE_DETAILS Values('R3', 75);
Insert into LMS_FINE_DETAILS Values('R4', 100);
Insert into LMS_FINE_DETAILS Values('R5', 150);
Insert into LMS_FINE_DETAILS Values('R6', 200);


--------------LMS_BOOK_DETAILS---------

Create table LMS_BOOK_DETAILS
(
BOOK_CODE Varchar(10),
BOOK_TITLE Varchar(50) NOT NULL,
CATEGORY Varchar(15) NOT NULL,
AUTHOR Varchar(30) NOT NULL,
PUBLICATION Varchar(30),
PUBLISH_DATE Date,
BOOK_EDITION NUMBER,
PRICE decimal(8,2) NOT NULL,
RACK_NUM Varchar(3),
DATE_ARRIVAL Date NOT NULL,
SUPPLIER_ID Varchar(3) NOT NULL,
Constraint LMS_cts4 PRIMARY KEY(BOOK_CODE),
 Constraint LMS_cts41 FOREIGN KEY(SUPPLIER_ID) References
LMS_SUPPLIERS_DETAILS(SUPPLIER_ID)
);


Insert into LMS_BOOK_DETAILS
Values('BL000001', 'Java How To Do Program', 'JAVA', 'Paul J. Deitel',
'Prentice Hall', TO_DATE('1999-12-10','YYYY-MM-DD'), 6, 600.00, 'A1',
TO_DATE( '2011-05-10','YYYY-MM-DD'), 'S01');
Insert into LMS_BOOK_DETAILS
Values('BL000002', 'Java: The Complete Reference ', 'JAVA', 'Herbert
Schildt', 'Tata Mcgraw Hill ', TO_DATE('2011-10-10','YYYY-MM-DD'), 5, 750.00, 'A1', 
TO_DATE('2011-05-10','YYYY-MM-DD'), 'S03');
Insert into LMS_BOOK_DETAILS
Values('BL000003', 'Java How To Do Program', 'JAVA', 'Paul J. Deitel',
'Prentice Hall', TO_DATE('1999-05-10','YYYY-MM-DD'), 6, 600.00, 'A1', 
TO_DATE('2012-05-10','YYYY-MM-DD'), 'S01');
Insert into LMS_BOOK_DETAILS
Values('BL000004', 'Java: The Complete Reference ', 'JAVA', 'Herbert
Schildt', 'Tata Mcgraw Hill ', TO_DATE('2011-10-10','YYYY-MM-DD'), 5, 750.00, 'A1', 
TO_DATE('2012-05-11','YYYY-MM-DD'), 'S01');
Insert into LMS_BOOK_DETAILS
Values('BL000005', 'Java How To Do Program', 'JAVA', 'Paul J. Deitel',
'Prentice Hall', TO_DATE('1999-12-10','YYYY-MM-DD'), 6, 600.00, 'A1', 
TO_DATE('2012-05-11','YYYY-MM-DD'), 'S01');
Insert into LMS_BOOK_DETAILS
Values('BL000006', 'Java: The Complete Reference ', 'JAVA', 'Herbert
Schildt', 'Tata Mcgraw Hill ', TO_DATE('2011-10-10','YYYY-MM-DD'), 5, 750.00, 'A1', 
TO_DATE('2012-05-12','YYYY-MM-DD'), 'S03');
Insert into LMS_BOOK_DETAILS
Values('BL000007', 'Let Us C', 'C', 'Yashavant Kanetkar ', 'BPB
Publications', TO_DATE('2010-12-11','YYYY-MM-DD'), 9, 500.00 , 'A3', TO_DATE('2010-11-03','YYYY-MM-DD')
, 'S03');
Insert into LMS_BOOK_DETAILS
Values('BL000008', 'Let Us C', 'C', 'Yashavant Kanetkar ','BPB
Publications', TO_DATE('2010-05-12','YYYY-MM-DD'), 9, 500.00 , 'A3', TO_DATE('2011-08-09','YYYY-MM-DD')
, 'S04');

SELECT * FROM LMS_BOOK_DETAILS;


------------LMS_BOOK_ISSUE------------------

Create table LMS_BOOK_ISSUE
(
BOOK_ISSUE_NO int,
MEMBER_ID Varchar(10) NOT NULL,
BOOK_CODE Varchar(10) NOT NULL,
DATE_ISSUE Date NOT NULL,
DATE_RETURN Date NOT NULL,
 DATE_RETURNED Date NULL,
FINE_RANGE Varchar(3),
Constraint LMS_cts5 PRIMARY KEY(BOOK_ISSUE_NO),
 Constraint LMS_Mem FOREIGN KEY(MEMBER_ID) References
LMS_MEMBERS(MEMBER_ID),
 Constraint LMS_BookDetail FOREIGN KEY(BOOK_CODE) References
LMS_BOOK_DETAILS(BOOK_CODE),
Constraint LMS_FineDetail FOREIGN KEY(FINE_RANGE) References
LMS_FINE_DETAILS(FINE_RANGE)
);

select *from login;
create table login1(username varchar2(40),password varchar2(40));

select *from login1 where username=null;
desc login1;
--------------------------------------------------------