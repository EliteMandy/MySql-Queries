----******************************** FUNCTIONS **************************
--create table ST(
--    id number(5),
--    name varchar(10),
--    marks number(4)
--);
--insert all 
--into ST values(&id,'&name',&marks)
--into ST values(&id,'&name',&marks)
--into ST values(&id,'&name',&marks)
--into ST values(&id,'&name',&marks)
--into ST values(&id,'&name',&marks)
--into ST values(&id,'&name',&marks)
--select * from dual;
--select * from ST;
--select count(*) from ST where marks = 70;
--select count(marks) from ST;
--select count(DISTINCT marks) from ST;
--select sum(marks) from ST;
--select sum(DISTINCT marks) from ST;
--select sum(marks) as Sum_mark from ST;
--select avg(marks) from st;
--select avg(DISTINCT marks) from st;
--select avg(DISTINCT marks) as AVERAGE from ST;
--select max(marks) from ST;
--select min(marks) from ST;
create table employee1(
    emp_id number(2),
    name varchar(20),
    age number(3),
    address varchar(20),
    salary number(10)
);