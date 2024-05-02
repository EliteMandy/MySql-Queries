create table Employee1(
    emp_id number(3),
    name varchar(20),
    age number(3),
    address varchar(20),
    salary number(10)
);
insert all
into Employee1 values(&emp_id,'&name',&age,'&address',&salary)
into Employee1 values(&emp_id,'&name',&age,'&address',&salary)
into Employee1 values(&emp_id,'&name',&age,'&address',&salary)
into Employee1 values(&emp_id,'&name',&age,'&address',&salary)
into Employee1 values(&emp_id,'&name',&age,'&address',&salary)
into Employee1 values(&emp_id,'&name',&age,'&address',&salary)
into Employee1 values(&emp_id,'&name',&age,'&address',&salary)
select * from dual;
select * from employee1;
select * from employee1 where salary in (select max(salary) from employee1);
select * from employee1 where age in (select max(age) from employee1);
select * from employee1 where salary in (select min(salary) from employee1);
select count(*) from employee1;
select count(*) from employee1 where address='Patna';
--select max(salary) from employee1;
--select min(salary) from employee1;
--select * from employee1 where salary<=3000;
--select max(age) from employee1;
select * from employee1 order by age;
select * from employee1 where address='Patna' order by salary;
alter table employee1 add Dept_id number(4);
select * from employee1;
update employee1 set Dept_id = (
    case emp_id
    when 1 then 500
    when 2 then 500
    when 3 then 500
    when 4 then 501
    when 5 then 501
    when 6 then 502
    when 7 then 502
    END
);
select * from employee1;
select dept_id,count(*) from employee1 group by dept_id order by dept_id;
select dept_id,count(*) from employee1 group by dept_id order by count(*);
update employee1 set dept_id=500 where emp_id=2;
select * from employee1;
select dept_id,count(*) from employee1 group by dept_id;
select dept_id,sum(salary) from employee1 group by dept_id;
select dept_id,Round(avg(salary)) from employee1 group by dept_id;
select dept_id,min(salary) from employee1 group by dept_id;
select dept_id,min(salary) from employee1 group by dept_id order by min(salary) desc;
select dept_id,min(salary),max(salary) from employee1 group by dept_id;
