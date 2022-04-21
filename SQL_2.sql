--Создать таблицу employees
--Наполнить таблицу employee 70 строками.


create table employees (
	id serial primary key,
	employee_name varchar (50) not null
);

insert into employees (employee_name)
values ('Philip Hernandez'),
		('Patricia Reed'),
		('Michael Smith'),
		('Don Gibson'),
		('David Morris'),
		('David White'),
		('Laurie Ingram'),
		('Katie Cooper'),
		('Willie Ward'),
		('Laura Ellis'),
		('Paul Rodgers'),
		('Jose Wright'),
		('Gordon Allen'),
		('Karen Wilson'),
		('Ted Hunter'),
		('Nathan Thompson'),
		('Robert Anderson'),
		('Michael Baker'),
		('Joshua James'),
		('Rachel Gibbs'),
		('Peter Porter'),
		('Mary Thompson'),
		('Sherry Davis'),
		('Phyllis Mitchell'),
		('Walter Smith'),
		('Judith Carroll'),
		('Steven Davis'),
		('Rhonda Coleman'),
		('Josephine Hall'),
		('Colleen Peterson'),
		('Sandra Crawford'),
		('Ricky Martinez'),
		('Cody Robertson'),
		('Frederick Gomez'),
		('Kenneth McDonald'),
		('Rose Vargas'),
		('William Miller'),
		('Brian Lee'),
		('Katherine Wells'),
		('Robert Coleman'),
		('Terrence Patton'),
		('Carl Wilson'),
		('Scott Cole'),
		('Steve King'),
		('Susan Patrick'),
		('David Reed'),
		('Brian Martinez'),
		('Anthony Brown'),
		('Carl Day'),
		('Marie Malone'),
		('Karen Walker'),
		('Laura Lee'),
		('Alberto Gray'),
		('Rafael Farmer'),
		('Christina Lindsey'),
		('Christopher Johnson'),
		('Elizabeth Sanders'),
		('Megan Jones'),
		('Chester Ryan'),
		('James Matthews'),
		('Donald Elliott'),
		('Virginia Smith'),
		('Loretta Martin'),
		('Emily Jones'),
		('Sara Hernandez'),
		('Jenny Mitchell'),
		('Theresa Flowers'),
		('William Brown'),
		('Rosemary Coleman'),
		('Sylvia Young');
		
select * from employees;


--Создать таблицу salary
--Наполнить таблицу salary 15 строками:


create table salary (
	id serial primary key,
	monthly_salary int not null
);

insert into salary (monthly_salary)
	values  (1000),
			(1100),
			(1200),
			(1300),
			(1400),
			(1500),
			(1600),		
			(1700),
			(1800),
			(1900),
			(2000),
			(2100),
			(2200),
			(2300),
			(2400),
			(2500);
 
select * from salary;


--Создать таблицу employee_salary
--
--Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id

create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

insert into employee_salary (employee_id, salary_id)
	values (2, 10),
			(4, 11),
			(6,	12),
			(8,	13),
			(10, 14),
			(12, 15),
			(85, 9),
			(14, 8),
			(90, 7),
			(16, 6),	
			(95, 5),
			(18, 4),
			(100, 3),
			(20, 2),
			(120, 1),
			(24, 12),
			(86, 13),
			(30, 14),
			(99, 15),
			(32, 10),
			(88, 11),
			(40, 5),
			(92, 6),
			(103, 7),
			(41, 8),
			(44, 9),
			(46, 4),
			(48, 3),
			(45, 2),
			(50, 1),
			(51, 11),
			(52, 12),
			(1, 13),
			(3, 14),
			(5, 15),
			(7, 5),
			(9,	6),
			(11, 7),
			(13, 8),
			(15, 9);
			
select * from employee_salary;

--Создать таблицу roles
--
--Наполнить таблицу roles 20 строками:

create table roles (
	id serial primary key, 
	role_name int not null unique
);
select * from roles;

alter table roles 
alter column role_name type varchar(30) using role_name::int;

insert into roles (role_name)
	values ('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');


--Создать таблицу roles_employee
--
--Наполнить таблицу roles_employee 40 строками:

create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees (id),
	foreign key (role_id)
		references roles (id)
);

insert into roles_employee (employee_id, role_id)
	values (1, 10),
			(3,	11),
			(5,	12),
			(7,	13),
			(9, 14),
			(11, 15),
			(13, 16),
			(15, 17),
			(17, 18),
			(19, 19),
			(21, 20),
			(23, 1),
			(25, 2),
			(27, 3),
			(29, 4),
			(31, 5),
			(33, 6),
			(35, 7),
			(37, 8),
			(39, 9),
			(41, 20),
			(43, 19),
			(45, 18),
			(47, 17),
			(49, 16),
			(51, 15),
			(53, 14),
			(55, 13),
			(57, 12),
			(59, 11),
			(61, 10),
			(63, 9),
			(65, 8),
			(67, 7),
			(69, 6),
			(2, 5),
			(4, 4),
			(6, 3),
			(8, 2),
			(10, 1);

select * from roles_employee; 

