--create database homework_9
use homework_9

create table Employees(
id int identity primary key,
FirstName varchar(30),
Salary decimal(10,2),
Department int) 
insert into Employees values('John', 2353.12, null),
							('Emile', 3244.23, null),	
							('George', 2443.23, 2),
							('Bob', 5654.34, 1)
create table Department(id int identity unique, Name varchar(30))
insert into Department values('Hr'), 
							 ('Finance'),
							 ('Layer'),
							 ('Qa')
alter table Employees 
add constraint fk_emp_dep 
foreign key(Department) references Department(id)

select e.FirstName, e.Salary, d.Name from Employees
e join Department d on e.Department = d.id
where Salary > 5000

create table Customer(
id int identity,
Name varchar(30),
products_id int, 
order_id int)
create table Orders(
id int identity,
orderid int, 
order_date date)
insert into Customer values('John', 1, 100),
						   ('Bob', 2, 101),
						   ('Alice', 3, 102),
						   ('George', 4, 103)
insert into Orders values(100, '2023-11-23'),
						 (101, '2023-11-15'),
						 (103, '2023-11-11')
alter table Customer 
add constraint uk_customer_orderId
unique(order_id)
alter table Orders
add constraint fk_orders_customer
foreign key(orderid) references Customer(order_id)

select c.Name, o.orderid, o.order_date from Customer 
c join Orders o on c.order_id = o.orderid
where o.order_date like '2023-%-%'

select * from Employees e left outer join Department d
on e.Department = d.id

create table Products(
id int identity unique, Name varchar(20),	Price decimal(10,3)) 
alter table Products 
add supplier_id int
create table Suppliers(id int identity, Name varchar(30))
insert into Suppliers values('A'), ('B'), ('C'), ('D')
insert into Products (Name, Price, supplier_id) values ('Allview Allwatch', 2154.54, null);
insert into Products (Name, Price, supplier_id) values ('Samsung Galaxy A52', 7168.74, 2);
insert into Products (Name, Price, supplier_id) values ('BLU Studio Max', 558.01, 2);
insert into Products (Name, Price, supplier_id) values ('Motorola WX390', 4029.8, 4);
insert into Products (Name, Price, supplier_id) values ('Samsung Galaxy A8 Star (A9 Star)', 8656.16, 1);
insert into Products (Name, Price, supplier_id) values ('Mitac MIO A501', 7284.18, 3);
insert into Products (Name, Price, supplier_id) values ('Motorola Moto G4 Play', 7658.64, 3);
insert into Products (Name, Price, supplier_id) values ('Asus Fonepad 7 FE375CG', 8151.42, null);
insert into Products (Name, Price, supplier_id) values ('Huawei G6150', 3945.84, 4);
insert into Products (Name, Price, supplier_id) values ('Nokia C1 Plus', 4971.73, 2);
insert into Products (Name, Price, supplier_id) values ('Toshiba Excite Pro', 2381.79, 4);
insert into Products (Name, Price, supplier_id) values ('Philips W625', 4306.87, 2);
insert into Products (Name, Price, supplier_id) values ('Allview Viva Q7 Life', 6865.3, 3);
insert into Products (Name, Price, supplier_id) values ('Lenovo A6000', 3474.91, 3);

select * from Products
select * from Suppliers
alter table Suppliers add constraint uk_supplier_id unique(id)
alter table Products add constraint fk_product_supplier foreign key(supplier_id) references Suppliers(id)

select p.Name, p.Price, s.Name from Products p right outer join Suppliers s on p.supplier_id = s.id


select * from Orders

alter table Orders 
add payment_id int 

create table paymets 
(id int identity unique,
amount decimal(10,2))

insert into paymets values(1232.23),(1232.23), (1232.43),(3243.43),(3435.9), (3642.23)

update orders
set payment_id = 2
where id = 7

select * from Orders o full join paymets p on o.payment_id = p.id

CREATE TABLE Employee (
    ID INT PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL,
    Position NVARCHAR(100),
    Department NVARCHAR(100),
    Salary DECIMAL(10,2),
    HireDate DATE,
    ManagerID INT NULL
);

INSERT INTO Employee (ID, Name, Position, Department, Salary, HireDate, ManagerID)
VALUES 
    (1, 'John Smith', 'CEO', 'Executive', 200000, '2015-06-01', NULL),
    (2, 'Emma Johnson', 'CFO', 'Finance', 150000, '2016-07-15', 1),
    (3, 'Michael Brown', 'CTO', 'IT', 160000, '2017-03-10', 1),
    (4, 'Sarah Davis', 'HR Manager', 'HR', 90000, '2018-09-20', 1),
    (5, 'David Wilson', 'Software Engineer', 'IT', 80000, '2019-11-05', 3),
    (6, 'Sophia Martinez', 'Software Engineer', 'IT', 85000, '2020-01-12', 3),
    (7, 'James Anderson', 'Accountant', 'Finance', 75000, '2021-05-22', 2),
    (8, 'Olivia Taylor', 'Recruiter', 'HR', 70000, '2021-08-18', 4),
    (9, 'William Thomas', 'IT Support', 'IT', 65000, '2022-02-28', 3),
    (10, 'Isabella White', 'Finance Analyst', 'Finance', 78000, '2022-10-15', 2),
    (11, 'Ethan Harris', 'Intern', 'IT', 40000, '2023-06-01', 5),
    (12, 'Mia Clark', 'Intern', 'HR', 40000, '2023-06-01', 4),
    (13, 'Noah Lewis', 'Intern', 'Finance', 40000, '2023-06-01', 7);

SELECT * FROM Employees;

select e1.Name as 'Manager',e2.Name as 'Employee' from Employee e1 join Employee e2 on e1.ID = e2.ManagerID 

select * from Products

create table sales 
(id int identity unique,
product_id int, 
region int,
date_id date)

create table region 
(id int identity primary key,
name varchar(20))
insert into region values
('Mirzo Ulug"bek'),
('Shoyhontoxur'),
('Yunsobod'),
('Mirobod')
insert into sales 
values(1, 1, '2024-12-21'),
	  (2, 2, '2024-12-21'),
	  (3, 3, '2024-12-21'),
	  (4, 1, '2024-12-21'),
	  (5, 3, '2024-12-21'),
	  (6, 2, '2024-12-21')

select p.Name, p.Price, r.name, sp.Name, s.date_id from products p 
join Suppliers sp on p.supplier_id = sp.id
join sales s on p.id = s.product_id 
join region r on s.region = r.id
where p.Price > 100.00

create table Students(id int identity unique, Name varchar(20), course_id int)
create table Courses(id int identity unique, Name varchar(30))
insert into Courses values('Math 101'), ('English 102'), ('Chmistry 103'), ('Geometry 104')
insert into Students values('Bob', 3), ('Emile',2), ('Emmy',1), ('George',4) 
select s.Name as 'Students name', c.Name as 'Course name' from Students 
s join Courses c on s.course_id = c.id where c.Name = 'Math 101'

select c.Name, c.order_id, count(c.order_id) as 'number of places orders' from Customer c join Orders o on c.order_id = o.orderid group by c.order_id, c.Name having count(c.order_id) >= 3

select e.FirstName, e.Salary, d.Name from Employees e left outer join Department d on e.Department = d.id where d.Name = 'Hr'

select d.Name from Employees e join Department d on e.Department = d.id group by d.Name having count(d.Name) >= 10

select p.Name, p.Price from Products p left outer join sales s on p.id = s.product_id  where s.product_id is null

select * from Orders o right outer join Customer c on o.orderid = c.order_id where c.order_id is not null and o.orderid is not null

insert into Customer values('Test', 2, null)

select * from Employees e full outer join Department d on e.Department = d.id where e.Department is null

select e1.Name, e2.Name from Employee e1 join Employee e2 on e1.ManagerID = e2.ManagerID where e1.ID != e2.ID order by e1.ManagerID 

select * from Orders o left outer join Customer c on o.orderid = c.order_id
where o.order_date like '2022-%-%'

insert into Orders values (100, '2022-11-23', 2)
select * from Department

select * from Employees e join Department d on e.Department = d.id where d.Name like 'Sales'and Salary > 5000

insert into Employees values('test2', 5004, 6)
insert into Department values('IT')
update Department
set Salary = 323.32
where id = 1
alter table Department 
add Salary decimal

select * from Employees e join Department d on e.Department = d.id where d.Name = 'IT'

select o.order_date, o.orderid, p.amount from Orders o full outer join paymets p on o.payment_id = p.id
where o.payment_id is not null

select * from Products p left outer join Orders o on p.id = o.id where o.id is null

select * from Employees e join Department d on e.Department = d.id
where e.Salary > (select avg(salary) from Employees)


select * from Orders o left outer join paymets p on o.payment_id = p.id
where o.order_date < '2020-1-1'


select * from Employee e1 join Employee e2 on e1.ManagerID = e2.ManagerID where e1.Salary > 5000

select * from Employees e right outer join Department d on e.Department = d.id where d.Name like 'M%'

select * from Products p join sales s on p.id = s.product_id where p.Price > 1000
select * from Products p cross join sales s where p.id = s.product_id and p.Price > 1000

select * from Students s join Courses c on s.course_id = c.id where c.Name like 'Math 101'





