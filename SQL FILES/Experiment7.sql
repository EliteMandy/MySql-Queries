create table Manu_Mar(
    Regd_no number(10) Primary Key,
    Name varchar(50) NOT NULL,
    fees number(4) NOT NULL check(fees<=999),
    ph_no number(10) NOT NULL check(ph_no<=9999999999),
    gender varchar(1) NOT NULL check(gender in ('M','F','O','m','f','o'))
);
create table Manu_Apr(
    Regd_no number(10) Primary Key,
    Name varchar(50) NOT NULL,
    fees number(4) NOT NULL check(fees<=999),
    ph_no number(10) NOT NULL check(ph_no<=9999999999),
    gender varchar(1) NOT NULL check(gender in ('M','F','O','m','f','o'))
);
drop table Manu_Mar;
insert all
into Manu_Mar values(202301,'Rishab',256,1234567890,'m')
into Manu_Mar values(202302,'Priya',343,2345678901,'f')
into Manu_Mar values(202303,'Divya',353,3456789012,'m')
into Manu_Mar values(202304,'Ashis',345,4567890123,'m')
into Manu_Mar values(202305,'Satyajeet',346,5678901234,'m')
into Manu_Mar values(202307,'Tanuja',764,6789012345,'f')
into Manu_Mar values(202345,'Piku',345,7890123456,'f')
into Manu_Mar values(202323,'Archana',234,8901234567,'f')
select * from dual;
insert all
into Manu_Apr values(202302,'Priya',343,2345678901,'f')
into Manu_Apr values(202323,'Archana',234,8901234567,'f')
into Manu_Apr values(202305,'Satyajeet',346,5678901234,'m')
into Manu_Apr values(202397,'Ankita',778,6789012376,'f')
into Manu_Apr values(202310,'Puja',345,1234567876,'f')
select * from dual;
--1
select Name,Regd_no,ph_no
from Manu_Mar
intersect
select name,regd_no,ph_no
from Manu_Apr;
--2
select Name,Regd_no,ph_no
from Manu_Mar
UNION
select name,regd_no,ph_no
from Manu_Apr;
--3
select Regd_no,upper(gender)
from Manu_Mar
intersect
select regd_no,upper(gender)
from Manu_Apr;
--4
select *
from Manu_Mar
MINUS
select *
from Manu_Apr;