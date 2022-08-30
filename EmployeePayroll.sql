create database Emp_Payroll_Service

----UC1 datebase is created

use Emp_Payroll_Service

----UC2 Create employee payroll table

create table Emp_Payroll
(
Id int identity(1,1) primary key,
name varchar (100) not null,
salary money not null,
start_date date not null
)

select * from Emp_Payroll

----UC3 Insert employee payroll data

insert into Emp_Payroll values
('Bil', 200000.0,'2018-03-28'),
('Terisa', 400000.0,'2019-05-30'),
('Charlie', 600000.0,'2020-07-09')

----UC4 Retrieve all the employee payroll data in table

select * from Emp_Payroll

----UC5 Retrieve some paticular data from the table

select salary from Emp_Payroll where name = 'Bil'
--Retrieve the bil salary

select name from Emp_Payroll where start_date between '2019-01-01' and GETDATE();
--Retrieve employee name using start date

----UC6 Alter, Update and insert the column to employee payroll table
alter table Emp_Payroll add Gender char(1)
update Emp_Payroll set name ='Bill' where id= 1
update Emp_Payroll set Gender = 'M' where name = 'Bill' or name = 'Charlie';
update Emp_Payroll set Gender = 'F' where name = 'Terisa';
select * from Emp_Payroll

----UC7 find sum, average, min, max and number of male and female employees
select gender,sum(salary) as Totalsalary from Emp_Payroll group by gender;
select gender,avg(salary) as averagesalary from Emp_Payroll group by gender;
select gender,min(salary) as minimumsalary from Emp_Payroll group by gender;
select gender,min(salary) as maximumsalary from Emp_Payroll group by gender;
select gender,count(salary) as gandercount from Emp_Payroll group by gender;

----UC8 Extend table and store some extra data of the employee
alter table Emp_Payroll add
Phonenumber varchar(15),
Address varchar (100) default 'India' not null,
Department varchar (20) default 'CS' not null
select * from Emp_Payroll

----UC9 Extend table and add more columns
alter table Emp_Payroll add
Basic_Pay money,
Deductions money,
Taxable_Pay money,
Income_Tax money,
Net_Pay money;
select * from Emp_Payroll

----UC10 Update department and add row 
update Emp_Payroll set Department = 'Sales' where name = 'Terisa';

insert into Emp_Payroll values
('Terisa',400000.00,'2019-05-30','F',NULL,'India','Marketing',NULL,NULL,NULL,NULL,NUll)
select * from Emp_Payroll

