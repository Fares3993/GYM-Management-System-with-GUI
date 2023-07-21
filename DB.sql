Create Sequence ADMINID;
Create Sequence TRAINERID;
Create Sequence MEMBERID;

drop table ADMIN cascade constraints;
drop table TRAINER cascade constraints;
drop table MEMBER cascade constraints;

Create table TRAINER
(TRAINERID number(10) primary key, NAME varchar2 (20),EMAIL varchar2 (20),PASSWORD varchar2 (20),PHONENUMBER varchar2 (20),ADDRESS varchar2 (20),GENDER varchar2 (20),NUMBEROFMEMBER number(10),CLASS varchar2 (20),GYMTIME varchar2 (20),AGE varchar2 (20),SALARY varchar2 (20),SSN number(10),ADMINID number(10) References ADMIN (ADMINID));
Create table MEMBER
(MEMBERID number(10) primary key, NAME varchar2 (20),EMAIL varchar2 (20),PHONENUMBER varchar2 (20),ADDRESS varchar2 (20),GENDER varchar2 (20),TRAINERID number(10),CLASS varchar2 (20),AMOUNTTOPAY varchar2 (20),AGE varchar2 (20),MEMBERSHIPTYPE varchar2 (20),SSN number(10),ADMINID number(10) References ADMIN (ADMINID));
Create table ADMIN
(ADMINID number(10) primary key,NAME varchar2 (20),EMAIL varchar2 (20),PASSWORD varchar2 (20),PHONENUMBER varchar2 (20),ADDRESS varchar2 (20),GENDER varchar2 (20));

insert into TRAINER values
(1, 'Fares','fa33@gmail.com','Fares123','0105563','3 street 445','male',20,'A','05:00AM-11:00AM','27','8000',2546897,1);
insert into TRAINER values
(2, 'Eman','em22@gmail.com','Eman123','0105562','2 street 445','female',20,'B','05:00AM-11:00AM','25','8000',2546897,1);

insert into MEMBER values
(1, 'Ahmed','ah55@gmail.com','Ahmed123','0105566','6 street 445','male',1,'A','200','15','PAYED',2746897,1);
insert into MEMBER values
(2, 'Asmaa','as66@gmail.com','Asmaa123','0105567','7 street 445','female',2,'B','200','13','PAYED',2646897,1);

insert into ADMIN values
(1, 'Ali','al88@gmail.com','Ali123','0105568','8 street 445','male');
