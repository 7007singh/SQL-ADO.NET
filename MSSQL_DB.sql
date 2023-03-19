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

insert into EmployeePayRoll values ('Dhoni', 45623, '2019-02-03');
insert into EmployeePayRoll values ('Ram', 45623, '2020-02-03');
insert into EmployeePayRoll values ('Radha', 45623, '2022-02-03');
insert into EmployeePayRoll (Salary, Name, StartDate) values (465789, 'Kumar', getdate());
insert into EmployeePayroll (Salary, Name, startDate) values (12346, 'Shyama', GETDATE());

------------UC4-SelectQuerie------------

select * from EmployeePayRoll

----UC5-RetriveData_BySpecificDetails---

select * from EmployeePayRoll where Name = 'Radha'
select * from EmployeePayRoll where StartDate between CAST('2023-02-03' as date) AND GETDATE();
select * from EmployeePayRoll where StartDate between CAST('2020-02-06' as date) AND GETDATE();

----------UC6-Alter&UpdateQueris--------

ALTER TABLE EmployeePayRoll ADD Gender char(1);
UPDATE EmployeePayRoll SET Gender = 'M' where Name = 'Dhoni' or Name = 'Kumar'
UPDATE EmployeePayRoll SET Gender = 'F' where Name = 'Shyama'

----------UC7-AggrigateFunction---------

select Count(Id) As NumOfEmployee from EmployeePayRoll;
select Count(Id) As NumOfEmployee, Gender from EmployeePayRoll group by Gender;
select Sum(Salary) As TotalSalary from EmployeePayRoll;
select Sum(Salary) As TotalSalary, Gender from EmployeePayRoll group by Gender;
select Max(Salary) As maxSalary from EmployeePayRoll;
select Max(Salary) As maxSalary from EmployeePayRoll group by Gender;
select Min(Salary) As minSalary from EmployeePayRoll group by Gender;
select Min(Salary) As minSalary from EmployeePayRoll;
select Avg(Salary) As avgSalary from EmployeePayRoll group by Gender;
select Avg(Salary) As avgSalary from EmployeePayRoll;

------------UC8-EntendData--------------

ALTER TABLE EmployeePayRoll ADD Phone float
ALTER TABLE EmployeePayRoll ADD DEFAULT 'Add' FOR Address 
ALTER TABLE EmployeePayRoll ADD Department varchar(50) NOT NULL default 'Working'