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


