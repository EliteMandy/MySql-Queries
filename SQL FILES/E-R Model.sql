create table employeee(
    emp_id number(2),
    name varchar(50),
    age number(3),
    address varchar(100),
    salary number(10)
);
insert all
into employeee values(&emp_id,'&name',&age,'&address',&salary)
into employeee values(&emp_id,'&name',&age,'&address',&salary)
into employeee values(&emp_id,'&name',&age,'&address',&salary)
into employeee values(&emp_id,'&name',&age,'&address',&salary)
into employeee values(&emp_id,'&name',&age,'&address',&salary)
into employeee values(&emp_id,'&name',&age,'&address',&salary)
into employeee values(&emp_id,'&name',&age,'&address',&salary)
select * from dual;
select * from employeee;
select emp_id,name,salary+3000 from employeee;
select emp_id,name,salary from employeee where salary>2000;
select * from employeee where salary>2000 AND age<25;
select * from employeee where salary>2000 OR age<25;