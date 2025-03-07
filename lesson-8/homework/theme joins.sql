create database task_8
use task_8


create table customers (customerID int, orderid int)
create table orders (order_ID int, product_name varchar(15), price int)

insert into customers values (1, 14),(2, 15),(3, 18),(5, 19),(6, 23) 
insert into orders values (14, 'vehicle', 120),(15, 'car', 12000),(18, 'airc', 350),
(119, 'ps5', 560),(23, 'car2', 2300)

alter table orders 
add orderdate date 
alter table customers add costumerName varchar(20) 
select * from customers
update customers 
set costumerName = 'Hanah'
where customerID = 6
update orders  
set orderdate = '2024-12-3'
where order_ID = 23

select c.costumerName, o.orderdate from customers c join orders o on c.orderid = o.order_ID

create table EmployeeDetails (id int identity, Name varchar(30), Salary decimal(10,2), Department varchar(30))
create table Employees(id int identity, employee_Id int, level varchar(30))

select ed.Name,ed.Salary,ed.Salary,e.level from Employees e join EmployeeDetails ed on e.employee_Id = ed.id

insert into EmployeeDetails values('Asliddin', 2383.12, 'Hr')
insert into Employees values(2, 'Senior')

create table products(id int identity, Name varchar(30), category_id int)

create table category(id int identity, Name varchar(30))

select p.Name as 'Product name', c.Name as 'category name' 
from products p join category c on p.category_id = c.id

select * from customers 
select * from orders

select c.costumerName, o.product_name, o.price, o.orderdate 
from customers c left join orders o on c.orderid = o.order_ID 

--task 5 
select * from products
select * from category
insert into category 
values('devices'),('electornik'), ('tablets'), ('computers'), ('extra tool')
insert into products values('Laptop h42', 4), ('Iphone 15', 1), ('Aux', 5), ('Machine', 2)
alter table category add  primary key (id)
alter table products add foreign key(category_id) references category(id)

create table OrderDetails(id int identity, OrderId int, productId int)
alter table OrderDetails add primary key(id)
alter table Orderdetails add foreign key(productId) references products(id)
insert into OrderDetails values(2,2), (3,4), (2,1)
alter table orderDetails add foreign key(OrderId) references customers(orderid)
alter table customers add unique(orderid)
insert into customers values(7, 24,'Emmy')
update OrderDetails 
set OrderId = 19
where id = 4
select * from customers
select * from OrderDetails
select * from products
select * from category

select c.costumerName, p.Name, ca.Name, o.OrderId from OrderDetails o
join customers c on o.OrderId = c.orderid  
join products p on o.productId = p.id
join category ca on p.category_id = ca.id

--task 6

select p.Name, c.Name from products p cross join category c 

-- task 7

select * from orders
select * from customers
select c.costumerName, o.product_name, o.price, o.orderdate, c.orderid from customers c join orders o on c.orderid = o.order_ID 

-- task 8 

select c.costumerName,o.product_name, o.price from customers c cross join orders o where o.price > 500

-- task 9 
alter table EmployeeDetails 
add Department int 
alter table EmployeeDetails drop column Department
create table Department(id int identity primary key, Name varchar(20))

alter table EmployeeDetails add constraint fk_dep
foreign key(Department) references Department(id) 

insert into Department values('Finance'), ('Hr'), ('Sales')
insert into EmployeeDetails values('John', 234.24,3),('Marry',233.234,2)
select * from EmployeeDetails
update EmployeeDetails
set Department = 1
where id = 2

select e.Name, e.Salary, d.Name from EmployeeDetails e join Department d on e.Department = d.id

--task 10 

select * from customers c join OrderDetails o on c.orderid <> o.OrderId

-- medium tasks
-- task 1 
select c.costumerName, o.product_name, o.price, o.orderdate 
from customers c inner join orders o on c.orderid = o.order_ID

-- task 2 
create table Students(id int identity, Name varchar(12))
create table Courses(id int identity, Name varchar(12))
create table result(id int identity, student_id int, course_id int)

select s.Name, c.Name from result r join Students s on r.student_id = s.id
join Courses c on r.course_id = c.id

-- task 3
insert into EmployeeDetails values('test', 13999, 2)

select * from EmployeeDetails cross join Department where Salary > 5000

-- task 4
select * from Employees emp join EmployeeDetails detail on emp.employee_Id = detail.id

-- task 5
select * from products

create table supplier(id int identity, name varchar(30))
insert into supplier values('A'),('B'),('C')

select * from products p join supplier s on p.id = s.id where s.name = 'A'

-- task 6 
select * from products
create table sales(id int identity, price decimal, quantity int)
insert into sales values(212.3, 12),(234.23,23),(231.235,53)

alter table products 
add salesId int 

update products
set salesId = 3
where id = 4

select * from products p left join sales s on p.salesId = s.id

-- task 17
select * from EmployeeDetails
insert into EmployeeDetails values('test2', 23452.43, 1)

select e.Salary, d.Name from EmployeeDetails e join Department d on e.Department = d.id 
where e.Salary > 4000 group by d.Name, e.Salary having d.Name = 'Hr'

--task 18 

select * from products p join OrderDetails o on o.OrderId >= p.id

-- task 19

select * from products p 
join sales s on p.salesId = s.id 
join supplier sp on p.id = sp.id 
where s.price >= 50 

--task 20

select * from sales

create table region 
(id int identity, Name varchar(30))
insert into region values('Mirzo ul"gbek'), ('Shoyxontohur'), ('Mirobod')

alter table sales 
add regionId int


update sales 
set regionId = 2
where id = 3 

select s.price, r.Name from products p
join sales s on p.salesId = s.id 
join region r on s.regionId = r.id
where s.price > 1000 group by r.Name, s.price


-- Hard tasks 
-- task 1 

create table Author(id int identity, Name varchar(20))
create table Books(id int identity, Name varchar(32), BookTitle varchar(30))
create table AuthorBooks(id int identity, authorId int, bookId int)

select a.Name, b.BookTitle from AuthorBooks ab 
join Author a on ab.authorId = a.id
join Books b on ab.bookId = b.id

-- task 2

select * from products p join category c on p.category_id = c.id where c.Name != 'electornik'

-- task 3

select * from OrderDetails r cross join products p join sales s on p.salesId = s.id where quantity > 100

-- task 4

select * from EmployeeDetails 
alter table EmployeeDetails
select * from YearOfWork
add YearOfWorkId int
create table YearOfWork(Yearofwork int)
insert into YearOfWork values(1),(3),(6)
update EmployeeDetails
set YearOfWorkId = 6
where id = 5

select * from EmployeeDetails e join YearOfWork y on e.YearOfWorkId >= y.Yearofwork where e.YearOfWorkId >= 6

