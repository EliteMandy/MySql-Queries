--create table student(
--    name varchar(50),
--    regd NUMBER(15),
--    email varchar(50)
--);
--insert all
--into student values('Mahendra',2101020451,'manusingh98122@gmail.com')
--into student values('Priya Ranjan', 2101020446, 'ranjanpriya22236@gmail.com')
--into student values('Divy', 2101020449, 'kpsg4775@gmail.com')
--select * from dual;
--select * from student;
--update student set name = 'Mahi' where regd = 2101020449;
--select * from student;
--update student set name = 'Divy Prakash Tiwari' where regd = 2101020449;
--select * from student;
create table student1(
    name varchar(50),
    roll_no varchar(50),
    age Number(5),
    email varchar(50)
);

insert all
into student1 values('Mahendra', '2101020451', 22, 'manusingh98122@gmail.com')
into student1 values('Divy', '2101020449', 22, 'kpsg4475@gmail.com')
into student1 values('Priya', '2101020446', 22, 'ranjanpriya22236@gmail.com')
select  * from dual;
-- Insert karne ka tarika
--insert into student1 values
--('Ram', '21001020',22,'manusingh98122@gmail.com'),
--('Divy', '2101020449', 22, 'kpsg4475@gmail.com'),
--('Priya', '2101020446', 22, 'ranjanpriya22236@gmail.com');

update student1 set name = 'Maahi' where roll_no = '2101020451';
select * from student1;
drop table student1;

CREATE TABLE student1(
   ID          INT NOT NULL,
   NAME        VARCHAR (20) NOT NULL,
   AGE         INT NOT NULL,
   ADDRESS     CHAR (25),
   SALARY      Number (18)
);

INSERT ALL
    INTO student1 (ID, NAME, AGE, ADDRESS, SALARY) VALUES (1, 'John', 21, 'New York', 5000)
    INTO student1 (ID, NAME, AGE, ADDRESS, SALARY) VALUES (2, 'Emma', 22, 'Los Angeles', 7000)
    INTO student1 (ID, NAME, AGE, ADDRESS, SALARY) VALUES (3, 'Liam', 20, 'Chicago', 4000)
    INTO student1 (ID, NAME, AGE, ADDRESS, SALARY) VALUES (4, 'Olivia', 23, 'Houston', 8000)
    INTO student1 (ID, NAME, AGE, ADDRESS, SALARY) VALUES (5, 'Noah', 21, 'Phoenix', 6000)
SELECT * FROM dual;
select * from student1;
update student1 set ID = (
    case ID
    when 1 then 451
    when 2 then 452
    when 3 then 453
    when 4 then 454
    when 5 then 449
    END
);
-- Ascending and descending use asc to ascending and desc for decsending
select * from student1 ORDER BY ID desc;
-- Distinct Age kitne hai
select distinct age from student1 ORder by age;
-- How many uniqe age is present in the table
select count(*) from student1;
select count(distinct age) from student1;
-- Find the number of person having same age
select age, count(name) from student1 group by age;


SELECT age, SUM(SALARY) AS total_salary
FROM student1
WHERE SALARY > 5000
GROUP BY age;
-- Different table
create table department(
d_id number(20) not null primary key,
branch varchar(50)
);

-- Add additional table in existing table
alter table student1 add (d_id NUMBER(20));

-- How to make a forign key
ALTER TABLE student1 ADD CONSTRAINT d_id FOREIGN KEY (d_id) REFERENCES department(d_id);
select * from student1;
update student1 set d_id = (
    case ID
    when 451 then 3056
    when 452 then 6056
    when 453 then 5054
    when 454 then 4202
    when 449 then 7030
    END
);

insert all
into department values(3056,'Hr')
into department values(6056,'Sde')
into department values(5054,'Ase')
into department values(4202,'Hr')
into department values(7030,'Sde')
select * from dual;

-- having
select ID from student1 group by ID,age having age > 21;
