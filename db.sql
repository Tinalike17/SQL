create table salary (
id serial primary key,
monthly_salary int not null
);

insert into salary(monthly_salary)
values (300),
		(800),
		(1200),
		(1500),
		(1800),
		(2000),
		(2300),
		(2500),
		(2700),
		(3000),
		(3200);
	
update salary
set monthly_salary = 5000
where id = 11;

delete from salary
where id = 9;
	
select*from salary;




create table roles (
id serial primary key,
role_title varchar(50) unique not null
);

insert into roles(role_title)
values  ('QA_Manual_junior'),
		('QA_Manual_middle'),
		('QA_Manual_senior'),
		('Java_Developer_junior'),
		('Java_Developer__middle'),
		('Java_Developer__senior'),
		('Manager');

alter table roles
add column parking int;

alter table roles
rename column parking to taxi;

alter table roles
drop column taxi;


select*from roles;
	
create table roles_salary (
id serial primary key,
role_id int not null,
salary_id int not null,
foreign key(role_id)
	references roles(id),
foreign key(salary_id)
	references salary(id)
);

insert into roles_salary (role_id,salary_id) 
values	(1,1),
		(2,2),
		(3,6),
		(4,2),
		(5,4);
select*from roles_salary;
select*from roles;
select*from salary;
 -- Below code (should return an error message) checks if created relationshions between tables were made successfully
insert into roles_salary (role_id,salary_id) 
values	(10,4);

insert into roles_salary (role_id,salary_id) 
values	(1,12);

	



