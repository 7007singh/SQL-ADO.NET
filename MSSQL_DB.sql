-----Welcome to SQL-Queries Program------
-----------UC1-CreateDataBase------------

create database PayRoll
use PayRoll

---------UC2-EmployeePayRollTable--------

CREATE TABLE EmployeePayRoll
(
   Id int identity(1,1) Primary key,
   Name varchar(200),
   Salary float,
   StartDate date
)

--------UC3-EmployeePayRollData---------

insert into EmployeePayRoll values ('Dhoni', 45623, '2019-02-03')
insert into EmployeePayRoll values ('Ram', 45623, '2020-02-03');
insert into EmployeePayRoll values ('Radha', 45623, '2022-02-03');
insert into EmployeePayRoll (Salary, Name, StartDate) values (465789, 'Kumar', getdate());
insert into EmployeePayRoll (Salary, Name, StartDate) values (465789, 'Shyama', getdate());
insert into EmployeePayroll (Salary, Name, startDate) values (12346, 'Shyama', GETDATE());

------------UC4-SelectQuerie------------

select * from EmployeePayRoll

----UC5-RetriveData_BySpecificDetails---

select * from EmployeePayRoll where Name = 'Radha'
select * from EmployeePayRoll where StartDate between CAST('2023-02-03' as date) AND GETDATE();
select * from EmployeePayRoll where StartDate between CAST('2020-02-06' as date) AND GETDATE();



