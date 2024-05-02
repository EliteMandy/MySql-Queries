--CREATE TABLE NAME STUDENT
create table Student(
name varchar(50),
roll_no number(10),
class varchar(20),
SEM varchar(10),
Ph_no number(15)
);
--USER INPUT VALUES***
INSERT INTO Student VALUES ('&name', &roll_no, '&class','&SEM',&Ph_no);
INSERT INTO Student VALUES ('&name', &roll_no, '&class','&SEM',&Ph_no);
INSERT INTO Student VALUES ('&name', &roll_no, '&class','&SEM',&Ph_no);
select * from Student;
--TO CHANGE THE WHOLE SEM COLUMN****
update Student set SEM='1ST';
select * from Student;
--UPDATE THE ROLL NUMBER OF KID
update Student set roll_no=1004 where name='Pandey';
select * from student;
delete from Student where ph_no=418421244;
select * from student;
insert into Student values ('&name',&roll_no,'&class','&sem',&ph_no);
select * from student;



--CREATE TABLE NAME Employee
create table Employee1(
E_ID number(10),
Name varchar(50),
Ph_no number(15)
);
Alter table Employee1 rename to Employee;
INSERT INTO Employee (E_ID,Name,Ph_no) 
VALUES
(10,'Mahendra',8260923303),
(11,'Mahefhfb',68415545)