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
select * from employeee where NOT address='Mumbai';
select * from employeee where salary>2000 AND age<25 OR emp_id=2;
select * from employeee where address in('Delhi','Bilaspur','Patna');
select * from employeee where salary in(2000,4500,10000);
create table customer(
    customer_id number(2),
    address varchar(50)
);
insert all
into customer values(1,'Delhi')
into customer values(2,'Bilaspur')
select * from dual;
select * from employeee where address in(select address from customer);
--NOT IN OPERATOR
select * from employeee where address not in('Delhi','Bilaspur','Patna');
insert into customer values(3,'Chennai');

select * from employeee where salary between 2000 AND 7000;