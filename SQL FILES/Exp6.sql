drop table EmployeeDetail;
drop table ProjectDetail;

create table EmployeeDetail(
EmployeeID number(5) primary key,
FirstName varchar2(50),
LastName varchar2(50),
Salary float(8),
JoiningDate varchar2(50),
Department varchar2(10),
Gender varchar2(10)
);

create table ProjectDetail(
ProjectDetailID number(5) primary key,
EmployeeID number(5),
ProjectName varchar2(50),
constraint fk_project foreign key(EmployeeID) references EmployeeDetail(EmployeeID)
);

desc EmployeeDetail;

desc ProjectDetail;

insert all
into EmployeeDetail values(1, 'Vikas', 'Ahlawat', 600000.00, '2013-02-15 11:16:28.290', 'IT', 'Male')
into EmployeeDetail values(2, 'Nikita', 'Jain', 530000.00, '2014-01-09 17:31:07.793', 'HR', 'Female')
into EmployeeDetail values(3, 'Ashish', 'Kumar', 1000000.00, '2014-01-09 10:05:07.793', 'IT', 'Male')
into EmployeeDetail values(4, 'Nikhil', 'Sharma', 480000.00, '2014-01-09 09:00:07.793', 'HR', 'Male')
into EmployeeDetail values(5, 'Anish', 'Kadian', 500000.00, '2014-01-09 09:31:07.793', 'Payroll', 'Male')
select * from dual;

select * from EmployeeDetail;

insert into ProjectDetail values(1, 1, 'Task Track');
insert into ProjectDetail values(2, 1, 'CLP');
insert into ProjectDetail values(3, 1, 'Survey Management');
insert into ProjectDetail values(4, 2, 'HR Management');
insert into ProjectDetail values(5, 3, 'Task Track');
insert into ProjectDetail values(6, 3, 'GRS');
insert into ProjectDetail values(7, 3, 'DDS');
insert into ProjectDetail values(8, 4, 'HR Management');
insert into ProjectDetail values(9, 5, 'GL Management');

select * from ProjectDetail;

select department, sum(Salary) from EmployeeDetail group by department;

select department, sum(Salary) from EmployeeDetail group by department order by sum(salary);

select department, sum(Salary) from EmployeeDetail group by department order by sum(salary) desc;

select department, count(distinct department), sum(salary) from employeedetail group by department;

select avg(salary) from EmployeeDetail group by department order by avg(salary);

select max(salary) from EmployeeDetail group by department order by max(salary);

select min(salary) from EmployeeDetail group by department order by min(salary);

select projectname, count(*)from projectdetail group by projectname having count(*)> 1;

select upper(firstname) from employeedetail;

select lower(firstname) from employeedetail;