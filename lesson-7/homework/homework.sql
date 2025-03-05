--create database homework_7
-- easy task
--1
--create table products(id int identity, name varchar(30), price decimal(10,3), quantity int)
use homework_7

--insert into products values('IPhone', 100.29, 2),
--							('Computer', 238.32, 3),
--							('Television', 422.34, 4),
--							('Laptop', 599.3, 4),
--							('Tablet', 534.53, 6)


select min(price) as 'Minimum price' from products

--2
--create table employee(id int identity primary key, name varchar(30), age int, salary decimal(30,4), department int)
--create table department(id int identity primary key, name varchar(30))
--insert into department values('Finance'),('Dev'),('Hr'),('Qa')
--alter table employee add foreign key (department) references department(id)

--insert into employee values('Asliddin', 16, 3000, 3),('Ramiziddin', 12, 329, 4)
 
--update employee
--set salary = 3833
--where id = 2

select max(salary) as 'Maximum salary' from employee

--3 task

--create table Costumer(id int identity, name varchar(32), age int)

--insert into costumer values('John', 32), ('Frank', 34), ('Emile', 43)

select count(*) from Costumer

--4 task

--alter table products 
--add category int 

--create table category(id int identity primary key, name varchar(34))
--insert into category values('electronic'), ('devices'), ('complects')

--alter table products add foreign key(category) references category(id)

--update products 
--set category = 1
--where id = 5

select count(distinct(category)) as 'count distinct category' from products

--5 task
--create table sales(id int identity primary key, product_id int)
--alter table products add  primary key (id)
--alter table sales add foreign key (product_id) references products(id)

--insert into sales values(1),(2),(1),(2),(3),(3),(1),(2)

select p.name, sum(p.price) from sales s 
left join products p on s.product_id = p.id
left join category c on p.category = c.id group by p.name, p.price


--6 task

select avg(age) as 'average age' from employee 

--7 task

select d.name, count(e.department) as 'number of employees' from employee e left join department d on e.department = d.id group by e.department, d.name

--8 task

select sum(p.price), c.name from products p join category c on p.category = c.id group by c.name

--9 task 

--alter table sales add region int 
--create table region(id int identity, name varchar(30))
--insert into region values('Shayhontohur'), ('Yunsobod'), ('Mirzo ulog"bek')

--select * from region
--alter table region add  primary key(id)
--alter table sales add foreign key (region) references region(id)

--update sales 
--set region = 2
--where id = 8

select r.name, sum(p.price) from sales s 
left join products p on s.product_id = p.id 
left join category c on p.category = c.id
left join region r on s.region = r.id group by r.name
 
-- 10 task

select count(e.id) as 'employees', d.name from employee e
left join department d on e.department = d.id group by d.name having count(e.id) >= 5

-- task 11
select c.name, sum(p.price) as 'sum of sales', avg(p.price) as 'average of sales' from sales s 
right join products p on s.product_id =  p.id
left join category c on p.category = c.id group by c.name

--task 12
select d.name, count(e.id) as 'number of employees' from employee e
left join department d on e.department = d.id group by d.name having d.name is not null

--task 13
select d.name, max(e.salary) as 'maximum salary', min(e.salary) as 'minium salary' from employee e
left join department d on e.department = d.id group by d.name having d.name is not null

-- task 14
select d.name, avg(salary) from employee e
left join department d on e.department = d.id group by d.name having d.name is not null

--task 15

select d.name, avg(salary) as 'average of salary', count(e.id) as ' number of employee' from employee e
left join department d on e.department = d.id group by d.name having d.name is not null
 
--task 16
select * from products
select avg(p.price) as 'average of price' from products p group by p.price having p.price > 200

--task 17 

select count(distinct(s.product_id)) from sales s
left join products p on s.product_id = p.id

-- task 18

--update sales 
--set date_id = '2024-9-12'
--where id = 16

select s.date_id, sum(p.price) from sales s
left join products p on s.product_id = p.id group by date_id 

-- task 19



--task 20
select d.name, sum(e.salary) as total from employee e
left join department d on e.department = d.id  group by d.name having  d.name is not null



