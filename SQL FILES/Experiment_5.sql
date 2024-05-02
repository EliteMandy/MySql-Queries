create table worker (
NAME varchar2(50),
ROLL_NO number(5) primary key,
Department varchar2(20),
SEM varchar2(5),
PH_NO number(10)
);
--desc worker;
--TO MAKE ROLL_NO AS PRIMARY: 
alter table worker modify ROLL_NO number(5) primary key;
alter table worker ADD check(length(PH_NO)>=10);
alter table worker modify Department varchar2(20) not null;
alter table worker modify SEM varchar2(5) not null;
--
insert all
into worker values('Abhay', 1002, 'BTech', '4th',1234578445)
into worker values('Harsh', 1003, 'Diploma', '4th',8165464110)
into worker values('Pandey', 1007, 'BTech', '3rd',4184214456)
select * from dual;
insert into worker values('Mahi',9999,'Btech','4th',123456789);
select * from worker;
create table worker1(
E_NAME varchar2(50),
E_ID number(5),
Designation varchar2(20),
Salary number(7)
);
alter table worker1 modify salary default 5000;
--
create index idx_E_NAME on worker1(E_NAME);


desc worker1;

insert into worker1 values('Abhay', 1002, 'BTech', 12000);
insert into worker1 values('Harsh', 1003, 'Diploma', 24000);
insert into worker1 values('Pandey', NULL, 'BTech', 27000);
select * from worker1;