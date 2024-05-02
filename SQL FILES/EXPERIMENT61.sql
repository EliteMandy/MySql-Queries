alter table employeee add dept_id varchar(10);
alter table employeee modify dept_id number(10);
select * from employeee;
update employeee set dept_id = (
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
--*Write a query to find the sum of salary of employee that lives at same location*
--*DIFFERENCE BETWEEN GROUP BY AND HAVING IS A IMPORTANT QUESTION*
select upper(address),sum(Salary) from employeee group by address having count(address)>=2 order by sum(salary);
create table customer_jan(
    id number(3),
    name varchar(20),
    city varchar(20)
);
create table customeer_dec(
    id number(3),
    name varchar(20),
    city varchar(20)
);
insert all
into customer_jan values(1,'Rahul','Delhi')
into customer_jan values(2,'Sneha','Kolkata')
into customer_jan values(3,'Kavita','Mumbai')
into customer_jan values(4,'Akshay','Banglore')
select * from dual;
insert all
into customeer_dec values(1,'Aksahy','Delhi')
into customeer_dec values(2,'Heena','Mumbai')
into customeer_dec values(3,'Sneha','Jaipur')
into customeer_dec values(4,'Abhishek','Banglore')
select * from dual;
update customeer_dec set name='Akshay' where id=1;
select name from customer_jan UNION select name from customeer_dec;
select name from customer_jan UNION ALL select name from customeer_dec order by name;
select name from customeer_dec INTERSECT select name from customer_jan;
select name from customeer_dec MINUS select name from customer_jan;
select * from customeer_dec;
select * from customer_jan;