-----project 1-------------

create database worker_data

use worker_data;

create table workers(
worker_id int not null,
first_name char(15),
Last_name char(15),
salary int not null,
joining_date datetime,
department_name varchar(20))

select * from workers;

insert into workers values
(1,'Monika','Arora',100000,'2014/02/20 9:00','HR'),
(2,'Niharika','Verma',80000,'2014/11/06 9:00','Admin'),
(3,'Vishal','Singhal',300000,'2014/02/20 9:00','HR'),
(4,'Amitabh','Singh',500000,'2014/02/20 9:00','Admin'),
(5,'Vivek','Bhati',500000,'2014/11/06 9:00','Admin'),
(6,'vipul','Diwan',200000,'2014/11/06 9:00','Account'),
(7,'satish','Kumar',75000,'2014/01/20 9:00','Account'),
(8,'Geetika','Chauhan',90000,'2014/11/04 9:00','Admin');

select * from workers;

---1.Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.---

select * from workers w
order by w.first_name asc,w.department_name desc;

---2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table.---

SELECT * FROM workers WHERE first_name IN ('Vipul', 'Satish');

---3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.---

 select * from workers where first_name like '_____h';
 
---4. Write an SQL query to print details of the Workers whose SALARY lies between 1.---

SELECT * FROM workers
WHERE salary BETWEEN 100000 AND 500000;

--5. Write an SQL query to fetch duplicate records having matching data in some fields of a table.---

select department_name, COUNT(first_name) from workers group by department_name having COUNT(Last_name) > 1

---6. Write an SQL query to show the top 6 records of a table.---

select top 6 * from workers;

---7. Write an SQL query to fetch the departments that have less than five people in them.

SELECT department_name, COUNT(worker_id) as 'Number of Workers'
FROM workers
GROUP BY department_name
HAVING COUNT(worker_id) < 5;

---8. Write an SQL query to show all departments along with the number of people in there.

SELECT department_name, COUNT(department_name) as 'Number of Workers'
FROM workers
GROUP BY department_name;

---9. Write an SQL query to print the name of employees having the highest salary in each department.

SELECT department_name, workers.first_name, workers.salary from(SELECT max(salary) as TotalSalary,Department_name from workers
group by department_name) as department 
Inner Join workers  on department.department_name=department.department_name, Department.TotalSalary=department.Salary;

------------------------------project 2--------------------

create database school_statement

use school_statement;

create table student_table(
Std_ID int not null,
Std_name varchar(20),
Sex varchar(10),
Std_Percentage int,
Class int,
Std_Sec varchar(1),
Std_Stream char(10),
Std_DOB date)

select * from student_table;

insert into student_table values
(1001, 'Surekha joshi', 'Female', 82, 12, 'A', 'Science', '1998/08/03'),
(1002, 'Maahi Agarwal', 'female', 56, 11, 'C', 'Commerce', '2008/11/23'),
(1003, 'Sanam Verma', 'Male', 59, 11, 'C', 'Commerce', '2006/06/29'),
(1004, 'Ronit Kumar', 'Male', 63, 11, 'C', 'Commerce', '1997/11/05'),
(1005, 'Dipesh Pulkit', 'Male', 78, 11, 'B', 'Science', '2003/09/14'),
(1006, 'Jahanvi Puri', 'Female', 60, 11, 'B', 'Commerce', '2008/07/11'),
(1007, 'Sanam Kumar', 'Male', 23, 12, 'F', 'Commerce', '1998/08/03'),
(1008, 'Sahil Saras', 'Male', 56, 11, 'C', 'Commerce', '2008/07/11'),
(1009, 'Akshra Agarwal', 'Female', 72, 12, 'B', 'Commerce', '1996/01/10'),
(1010, 'Satuti Mishra', 'Female', 39, 11, 'F', 'Science', '2008/11/23'),
(1011, 'Harsh Agarwal', 'Male', 42, 11, 'C', 'Science', '1998/08/03'),
(1012, 'Nikunj Agarwal', 'Male', 49, 12, 'C', 'Commerce', '1998/06/28'),
(1013, 'Akruti Saxena', 'Female', 89, 12, 'A', 'Science', '2008/11/23'),
(1014, 'Tani Rastogi', 'Female', 82, 12, 'A', 'Science', '2008/11/23');

select * from student_table;

---2. To display any name and date of birth from the table STUDENT. 

SELECT Std_name, Std_DOB FROM student_table ;

---3. To display all students record where percentage is greater of equal to 80 FROM student table.

select *from student_table
where Std_Percentage >= 80;

---4. To display student name, stream and percentage where percentage of student is more than 80

select Std_name,Std_stream,Std_Percentage from student_table
where Std_percentage > 80;

---5. To display all records of science students whose percentage is more than 75 form student table.

select * from student_table
where Std_Stream = 'Science' AND Std_Percentage > 75;














