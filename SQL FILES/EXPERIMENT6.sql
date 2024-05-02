create table EmployeeDetail1(
    employee INT,
    Fname varchar(10),
    Lname varchar(10),
    Salary number(10),
    joining_date varchar(20),
    Department varchar(10),
    Gender varchar(10)
);
create table ProjectDetails(
    projectDetail_id INT,
    Employee_id INT,
    ProjectName varchar(20)
);
insert all
into EmployeeDetail1 values(1,'Vikas','Ahlawat',600000,'2013-02-15','IT','Male')
into EmployeeDetail1 values(2,'Nikita','Jain',530000,'2014-01-09','HR','Female')
into EmployeeDetail1 values(3,'Ashish','Kumar',1000000,'2014-01-09','IT','Male')
into EmployeeDetail1 values(4,'Nikhil','Sharma',480000,'2014-01-09','HR','Male')
into EmployeeDetail1 values(5,'Anish','Kadian',500000,'2014-01-09','Payroll','Male')
select * from dual;
insert all
into ProjectDetails values(1,1,'Task Track')
into ProjectDetails values(2,1,'CLP')
into ProjectDetails values(3,1,'Survey Management')
into ProjectDetails values(4,2,'HR Management')
into ProjectDetails values(5,3,'Task Track')
into ProjectDetails values(6,3,'GRS')
into ProjectDetails values(7,3,'DDS')
into ProjectDetails values(8,4,'HR Management')
into ProjectDetails values(9,6,'GL Management')
select * from dual;
--1
select department,sum(salary) from EmployeeDetail1 group by Department;
--2
select department,sum(salary) from EmployeeDetail1 group by Department order by sum(salary);
--3
select department,sum(salary) from EmployeeDetail1 group by Department order by sum(salary) DESC;
--4
select department,COUNT(Department),sum(salary) from EmployeeDetail1 group by Department order by sum(salary);
--5
select department,AVG(salary) from EmployeeDetail1 group by Department order by sum(salary);
--6
select department,MAX(salary) from EmployeeDetail1 group by Department order by MAX(salary);
--7
select department,MIN(salary) from EmployeeDetail1 group by Department order by MIN(salary);
--8
Select ProjectName,Count(*) from ProjectDetail GROUP BY ProjectName HAVING COUNT(*)>1;
--9
select upper(concat(Fname,Lname)) as name from EmployeeDetail1;
--10
select Lower(concat(Fname,Lname)) as name from EmployeeDetail1;