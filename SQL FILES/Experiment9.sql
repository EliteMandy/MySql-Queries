CREATE TABLE employees (
  e_id INT PRIMARY KEY,
  Fname VARCHAR(50),
  Lname VARCHAR(50),
  Salary INT,
  dept VARCHAR(50),
  dept_id VARCHAR(50)
);

INSERT ALL
into employees VALUES(1, 'neena', 'gupta', 5000, 'hr', 'd1')
into employees  VALUES(2, 'akash', 'yadav', 10000, 'it', 'd2')
into employees  VALUES(3, 'anup', 'singh', 8000, 'mark', 'd3')
into employees  VALUES(4, 'anurag', 'kashyap', 20000, 'it', 'd4')
into employees  VALUES(5, 'anuraj', 'samal', 50000, 'it', 'd5')
select * from dual;

--1
SELECT Fname, Lname
FROM employees
WHERE Salary > (SELECT Salary FROM employees WHERE e_id = 3);

--2
SELECT Fname, Lname, dept
FROM employees
WHERE dept = (SELECT dept FROM employees WHERE e_id = 5);

--3
SELECT Fname, Lname, dept_id
FROM employees
WHERE Salary = (SELECT MIN(Salary) FROM employees);

--4
SELECT e_id, Fname, Lname
FROM employees
WHERE Salary > (SELECT AVG(Salary) FROM employees);

--5
SELECT *
FROM employees
WHERE Salary BETWEEN (SELECT MIN(Salary) FROM employees) AND 5000;

--6
SELECT e1.e_id, e1.Fname, e1.Lname, e1.dept_id, e1.Salary
FROM employees e1
WHERE e1.Salary = (SELECT MAX(Salary) FROM employees e2 WHERE e1.dept_id = e2.dept_id);
