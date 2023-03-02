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


