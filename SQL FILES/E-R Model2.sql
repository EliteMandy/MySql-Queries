--select * from employeee where salary between 2000 AND 7000;
--select * from employeee where salary not between 2000 AND 7000;
--select * from employeee where name like 'K%';
--select * from employeee where name like '_a%';
--select * from employeee where name like 'M___%';
--select * from employeee where salary like '20%';


create table employeeDetails(
    Emp_id number(10),
    fullname varchar(50),
    Manager_id number(10),
    Date_Of_Joining varchar(100),
    city varchar(50)

);
insert all
into employeeDetails values(121,'John Snow',321,'01/31/2019','Toronto')
into employeeDetails values(321,'Walter White',986,'01/30/2020','California')
into employeeDetails values(421,'Kuldeep Rana',321,'27/11/2021','New Delhi')
select * from dual;
create table Employee_Salary(
    Emp_id number(10),
    project varchar(3),
    salary number(10),
    variable number(10)
);
insert all
into Employee_Salary values(121,'p1',8000,500)
into Employee_Salary values(321,'p2',10000,1000)
into Employee_Salary values(421,'p1',1200,0)
select * from dual;


select Emp_id,fullname from employeeDetails where Manager_id=986;