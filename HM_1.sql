create table employees(
id serial primary key,
employee_name varchar(50) not null
);

insert into employees(employee_name)
values  ('Tina'),
		('Valya'),
		('Caleb'),
		('Nikolai'),
		('Emma'),
		('Lena'),
		('Diana'),
		('Oscar'),
		('Giselle'),
		('Miguel'),
		('Anya'),
		('Jorge'),
		('Isabella'),
		('Oliver'),
		('Marta'),
		('Sophia'),
		('Rafael'),
		('Elena'),
		('Hugo'),
		('Daisy'),
		('Isaac'),
		('Adriana'),
		('Enrique'),
		('Amelia'),
		('Ruben'),
		('Laura'),
		('Bryan'),
		('Liliana'),
		('Diego'),
		('Jasmine'),
		('Juan'),
		('Ivy'),
		('Alex'),
		('Grace'),
		('Fernando'),
		('Diana'),
		('Adam'),
		('Julia'),
		('Luis'),
		('Camila'),
		('Pablo'),
		('Sabrina'),
		('Carlos'),
		('Maya'),
		('Ramon'),
		('Natalie'),
		('Manuel'),
		('Hannah'),
		('Gael'),
		('Sarah'),
		('Mario'),
		('Eva'),
		('Antonio'),
		('Jocelyn'),
		('Mia'),
		('Felix'),
		('Marisol'),
		('Victor'),
		('Jasmine'),
		('Juan'),
		('Ivy'),
		('Jose'),
		('Jessica'),
		('Leonardo'),
		('Daisy'),
		('Jesus'),
		('Iris'),
		('Javier'),
		('Leah'),
		('Amanda'),
		('David'),
		('Eliana');
	
select*from employees;

delete from employees 
where id = 71 or id = 72;

create table salary_HM_1 (
id serial primary key,
monthly_salary int not null
);

insert into salary_HM_1(monthly_salary)
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
	
select*from salary_HM_1; 

create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

insert into employee_salary(employee_id, salary_id)
values  (3,7),
		(1,4),
		(5,9),
		(40,13),
		(23,4),
		(11,2),
		(52,10),
		(15,13),
		(26,4),
		(16,1),
		(33,7),
		(2,7),
		(4,2),
		(6,9),
		(7,7),
		(8,9),
		(9,1),
		(10,2),
		(12,7),
		(13,14),
		(81,3),
		(79,16),
		(18,15),
		(19,14),
		(20,12),
		(21,7),
		(22,5),
		(24,2),
		(25,3),
		(27,4),
		(28,1),
		(29,6),
		(71,8),
		(72,9),
		(73,1),
		(74,10),
		(75,12),
		(76,13),
		(77,8),
		(78,15);
	
	select*from employee_salary;

	create table roles_HM_1(
	id serial primary key,
	role_name int not null unique
	);
	
	alter table roles_hm_1 
	alter column role_name type varchar(30);

select*from roles_HM_1;

insert into roles_HM_1(role_name)
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

select*from roles_HM_1;

create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles_HM_1(id)
);
