--create database workers
use workers

create table employee(
Id int identity, Name varchar(30), Age int, workPlace int, salaryInfo int)

create table salary(
Id int identity, Salary decimal(10,2), MonthId int)

create table MonthForSalary(
Id int identity, Name varchar(20))

create table WorkPlace(
Id int identity, Name varchar(20),)

alter table Salary
add constraint Pk_Salary primary key(Id)

alter table WorkPlace
add constraint Pk_WorkPlace_Id primary key(Id)

alter table employee
add foreign key (salaryInfo) references Salary(Id)

alter table employee
add foreign key (workPlace) references WorkPlace(Id)

alter table MonthForSalary
add constraint Pk_Mounth_Id primary key(Id)

alter table Salary
add foreign key (MonthId) references MonthForSalary(Id)

select * from Salary
insert into Salary values(10034.3,1)

select * from MonthForSalary
--insert into MonthForSalary values('January'),
--									('February'),
--									('March'),
--									('April'),
--									('May'),
--									('June'),
--									('July'),
--									('August'),
--									('September'),
--									('October'),
--									('November'),
--									('December')
select * from WorkPlace

--insert into WorkPlace values('Finance'),
----							('Dev')
--insert into WorkPlace values('QA'),
--							('Rop'),
--							('Operator')
select * from WorkPlace
select * from MonthForSalary
select * from Salary
insert into Salary values(1382.3,3)
insert into Salary values(3213.4,3)
select * from employee

--insert into employee values('Abdulloh', 16, 2, 1),
--							('Asliddin', 23, 1, 1),
--							('Yusuf', 12,3,2)


create table Customers(Id int identity primary key, Name varchar(20), Age int Check(Age>18))

