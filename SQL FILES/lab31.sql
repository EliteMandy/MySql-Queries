--1st Question
create table Student(
Name varchar(50),
roll_no number(20),
class varchar(20),
sem varchar(5),
ph_no number(15)
);
--2nd Question 
insert into Student values ('Mahendra Singh',21075,'Btech','4th',8003423827);
select * from Student;
delete from Student where name='Mahendra Singh';
--INSERTING VALUES
insert All 
into Student values ('Abhay',1002,'BTech','4TH',123457844)
into Student values ('Harsh',1003,'Diploma','2nd',816546411)
into Student values ('Pandey',1007,'BTech','3rd',418421244)
select * from dual;
select * from Student;
--3rd QUESTION
update Student set sem='1st';
--5th question
update Student set roll_no=1004
where name='Pandey';
--6th question
--in the copy
--9th question is to make a table name employee 
select * from employee;
--10 ADD DESIGNATION TABLE
update employee set Designation = (
    case name
    when 'Abhay' then 'CTO'
    when 'Harsh' then 'CEO'
    when 'Pandey' then 'CFO'
    END
    )
    where name in ('Abhay','Harsh','Pandey');
select * from employee;
--11th is the copy
update employee set E_ID = (
    case name
    when 'Abhay' then 1
    when 'Harsh' then 31
    when 'Pandey' then 74
    END
    )
    where name in ('Abhay','Harsh','Pandey');
select * from employee;
--12th QUESTION
update employee set E_ID = (
    case name
    when 'Abhay' then E_ID + 100
    when 'Harsh' then E_ID + 100
    when 'Pandey' then E_ID + 100
    END
    )
    where name in ('Abhay','Harsh','Pandey');
select * from employee;
--13th Questions CUSTOMER TABLE
create table customer(
customer_id number(10),
order_date varchar(20),
order_id number(20),
mob_bo number(15)
);
insert all 
into customer values(451,'6-sep-2023',14552684,9812210329)
into customer values(452,'11-aug-2023',1468574,8003423827)
into customer values(453,'8-sep-2023',64816821,9828426225)
into customer values(542,'15-june-2023',4177515,8725486825)
into customer values(135,'11-dec-2022',45124,8923147654)
select * from dual;
