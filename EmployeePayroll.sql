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


