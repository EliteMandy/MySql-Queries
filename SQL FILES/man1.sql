--MANAGER TABLE
Create table MANAGER_table
(
MANAGER_ID varchar(10),
MANAGER_NAME varchar(20),
DEPARTMENT_ID varchar(5)
);
Insert into MANAGER_table values('M1','prem','D3');
Insert into MANAGER_table values('M2','shree','D4');
Insert into MANAGER_table values('M3','nick','D1');
Insert into MANAGER_table values('M4','cory','D1');
select * from MANAGER_table;
--EMPLOYEE TABLE
create table Employee_Table(
    emp_id varchar2(10),
    emp_name varchar2(15),
    salary number(20),
    dept_id varchar2(10),
    manager_id varchar2(10)
    );
insert all
into Employee_table values('E1','Rahul',15000,'D1','M1')
into Employee_table values('E2','Manoj',15000,'D1','M1')
into Employee_table values('E3','James',55000,'D2','M2')
into Employee_table values('E4','Michael',25000,'D2','M2')
into Employee_table values('E5','Ali',20000,'D10','M3')
into Employee_table values('E6','Robin',35000,'D10','M3')
select * from dual;
--PROJECT TABLE
Create table PROJECT_TABLE
(
    PROJECT_ID varchar(5),
    PROJECT_NAME varchar(20),
    TEAM_MEMBER_ID varchar(5)
);
Insert into PROJECT_TABLE values('p1','Data migration','E1');
Insert into PROJECT_TABLE values('p2','Data migration','E2');
Insert into PROJECT_TABLE values('p3','Data migration','M3');
Insert into PROJECT_TABLE values('p4','ETL tool','E1');
Insert into PROJECT_TABLE values('p5','ETL tool','M4');

create table department_Table(
    dept_id varchar(3),
    dept_name varchar(10)
);
insert all
into department_Table values('D1','IT')
into department_Table values('D2','HR')
into department_Table values('D3','FINANCE')
into department_Table values('D4','ADMIN')
select * from dual;

select e.emp_name,d.dept_name,m.manager_name,p.project_name
from Employee_table e
left join Department_table d on e.dept_id =d.dept_id
left join manager_table m on e.manager_id = m.manager_id
left join project_table p on e.emp_id=p.team_member_id;




create table family(
    member_id varchar(3),
    name varchar(10),
    age INT,
    parent_id varchar(3)
);
insert all
into family values('F1','David',4,'F5')
into family values('F2','Carol',10,'F5')
into family values('F3','Michael',12,'F5')
into family values('F4','Johnson',36,'')
into family values('F5','Maryam',40,'F6')
into family values('F6','Stwart',70,'')
into family values('F7','Rohan',6,'F4')
into family values('F8','Asha',8,'F4')
select * from dual;
select child.name as child_name,child.age as child_age,parent.age as parent_age from family child
join family parent on child.parent_id=parent.member_id;
select max(salary) from employeee where salary<>(select max(salary) from employeee);
select max(salary) from employeee;
select * from employeee;
select emp_id,name from employeee where salary=(select max(salary) from employeee where salary<>(select max(salary) from employeee));