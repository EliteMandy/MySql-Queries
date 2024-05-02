--create table Student(
--name varchar(20),
--roll_no number(20),
--class varchar(20),
--sem varchar(10),
--ph_no number(12)
--);
--insert all
--into student values('&name',&roll_no,'&class','&sem',&ph_no)
--into student values('&name',&roll_no,'&class','&sem',&ph_no)
--into student values('&name',&roll_no,'&class','&sem',&ph_no)
--select * from dual;
--select * from Student;
--update student set sem='1st';
--update student set roll_no=1004 where name='Pandey';
--delete from student where ph_no = 123457844;
--drop table employee;
create table employee(
    e_id number(10),
    name varchar(20),
    ph_no number(13)
);
insert all
into employee values(1002,'Abhay',123457844)
into employee values(1003,'Harsh',816546411)
into employee values(1007,'Pandey',418421244)
select * from dual;
select * from employee;
alter table employee add designation varchar(10);
select * from employee;
insert into employee (designation) values('CTO','CEO','CFO');
select * from employee;
update employee set designation = (
    case e_id
    when 1002 then 'CTO'
    when 1003 then 'CEO'
    when 1007 then 'CFO'
    END
)
where e_id in (1002,1003,1007);
select * from employee;
delete from employee where name is null;
select * from employee;
delete from employee where name='Abhay' AND designation='CTO';
update employee set e_id = (
    case e_id
    when 1002 then e_id+100
    when 1003 then e_id+100
    when 1007 then e_id+100
    END
)
where e_id in (1002,1003,1007);
select * from employee;
create table employee1(
    e_id number(10),
    name varchar(20),
    ph_no number(13),
    designation varchar(10)
);
insert all
into employee1 values(1,'Abhay',123457844,'CTO')
into employee1 values(31,'Harsh',816546411,'CEO')
into employee1 values(74,'Pandey',418421244,'CFO')
select * from dual;
--update employee1 set e_id = (
--    case e_id
--    when 1 then e_id+100
--    when 31 then e_id+100
--    when 74 then e_id+100
--    END
--)
--where e_id in (1,31,74);
update employee1 set e_id=e_id+100;
select * from employee1;
create table patient_details(
    name varchar(20),
    patient_id number(5),
    disease varchar(50),
    gender varchar(3),
    treatment_periods varchar(10)
);
insert all
into patient_details values('&name',&patient_id,'&disease','&gender','&treatment_periods')
into patient_details values('&name',&patient_id,'&disease','&gender','&treatment_periods')
select * from dual;
select * from patient_details;