-- 1) Создать таблицу employees
--     id. serial,  primary key,
--     employee_name. Varchar(50), not null


create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

select * from employees;

--2) Наполнить таблицу employee 70 строками.
insert into employees (id, employee_name)
values  (1, 'Maverick'),
		(2, 'Nevaeh'),
		(3, 'Raelynn'),
		(4,	'Adalynn'),
		(5,	'Emersyn'),
		(6,	'London'),
		(7,	'Jaden'),
		(8,	'Alivia'),
		(9,	'Jaylen'),
		(10, 'Gracelyn'),
		(11, 'Kolton'),
		(12, 'Kamden'),
		(13, 'Meadow'),
		(14, 'Jaliyah'),
		(15, 'Jazlyn'),
		(16, 'Jayleen'),
		(17, 'Jayson'),
		(18, 'Jalen'),
		(19, 'Jamari'),
		(20, 'Braelyn'),
		(21, 'Jaylin'),
		(22, 'Sam'),
		(23, 'DeAndre'),
		(24, 'Julissa'),
		(25, 'Promise'),
		(26, 'Novalee'),
		(27, 'Laken'),
		(28, 'Jaycee'),
		(29, 'Kyleigh'),
		(30, 'Jianna'),
		(31, 'Seven'),
		(32, 'Dash'),
		(33, 'Kiana'),
		(34, 'Jaelyn'),
		(35, 'Jaylee'),
		(36, 'DAngelo'),
		(37, 'Jaelynn'),
		(38, 'McKpayla'),
		(39, 'Kasey'),
		(40, 'Jazlynn'),
		(41, 'Davion'),
		(42, 'Kaelyn'),
		(43, 'Raylynn'),
		(44, 'Davian'),
		(45, 'Kaylin'),
		(46, 'Marlon'),
		(47, 'DeShawn'),
		(48, 'Kaylynn'),
		(49, 'Janessa'),
		(50, 'Kodi'),
		(51, 'Kailyn'),
		(52, 'Essence'),
		(53, 'Daylin'),
		(54, 'Janae'),
		(55, 'Truth'),
		(56, 'Javon'),
		(57, 'Jaylynn'),
		(58, 'Chevelle'),
		(59, 'Sherlyn'),
		(60, 'Arizona'),
		(61, 'Deon'),
		(62, 'Daylen'),
		(63, 'Hollyn'),
		(64, 'Kaelynn'),
		(65, 'Kaylen'),
		(66, 'Lettie'),
		(67, 'Kapri'),
		(68, 'Jazzlyn'),
		(69, 'Jazelle'),
		(70, 'Pepper');
		
select * from employees;

--3) Создать таблицу salary
--   id. Serial  primary key,
--   monthly_salary. Int, not null

create table salary(
id serial primary key,
monthly_salary int not null
);

select * from salary;

-- 4) Наполнить таблицу salary 15 строками:
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

-- 5) Создать таблицу employee_salary
--     id. Serial  primary key,
--     employee_id. Int, not null, unique
--     salary_id. Int, not null

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

select * from employee_salary;

--6) Наполнить таблицу employee_salary 40 строками:
--   в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary (employee_id, salary_id)
values  (3, 10),
		(5, 4),
		(1, 6),
		(9, 12),
		(12, 1),
		(20, 7),
		(37, 2),
		(13, 15),
		(45, 8),
		(23, 40),
		(18, 23),
		(65, 31),
		(24, 28),
		(26, 16),
		(56, 30),
		(25, 14),
		(70, 41),
		(59, 3),
		(64, 13),
		(69, 24),
		(27, 29),
		(19, 25),
		(58, 22),
		(42, 10),
		(2, 33),
		(51, 9),
		(50, 23),
		(85, 27),
		(99, 34),
		(75, 30),
		(89, 21),
		(94, 20),
		(78, 17),
		(102, 18),
		(73, 38),
		(79, 39),
		(91, 26),
		(124, 11),
		(150, 5),
		(111, 19);
		
select * from employee_salary;

-- 7) Создать таблицу roles
--    id. Serial  primary key,
--    role_name. int, not null, unique
	
create table roles(
	id serial primary key,
	role_name int not null unique 
);

select * from roles; 

-- 8) Поменять тип столба role_name с int на varchar(30)

alter table roles
alter column role_name type varchar(30) using role_name::varchar(30);

select * from roles; 
 
-- 9) Наполнить таблицу roles 20 строками:

insert into roles(role_name)
values  ('QA_Engineer_junior'),
		('QA_Engineer_middle'),
		('QA_Engineer_senior'),
		('QA_Engineer_automation_junior'),
		('QA_Engineer_automation_middle'),
		('QA_Engineer_automation_senior'),
		('Java_developer_junior'),
		('Java_developer_middle'),
		('Java_developer_senior'),
		('Phyton_developer_junior'),
		('Phyton_developer_middle'),
		('Phyton_developer_senior'),
		('Project_manager'),
		('Sales_manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('JavaScript_developer_junior'),
		('JavaScript_developer_middle'),
		('JavaScript_developer_senior');
		
select * from roles; 
	
--10) Создать таблицу roles_employee
--     id. Serial  primary key,
--     employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--     role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);

select * from roles_employee; 

-- 11) Наполнить таблицу roles_employee 40 строками:

 insert into roles_employee(employee_id, role_id)
 values (3, 10),
		(5, 4),
		(1, 6),
		(9, 12),
		(12, 1),
		(20, 7),
		(37, 2),
		(13, 15),
		(45, 8),
		(23, 20),
		(18, 18),
		(65, 16),
		(24, 4),
		(26, 16),
		(56, 7),
		(25, 14),
		(70, 8),
		(59, 3),
		(64, 13),
		(69, 11),
		(27, 20),
		(19, 15),
		(58, 6),
		(42, 10),
		(2, 19),
		(51, 9),
		(50, 20),
		(4, 4),
		(66, 9),
		(7, 15),
		(8, 13),
		(10, 20),
		(6, 17),
		(21, 18),
		(30, 6),
		(22, 12),
		(43, 13),
		(38, 11),
		(47, 5),
		(35, 19);
