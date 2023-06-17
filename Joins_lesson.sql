
create table City(
id serial,
title varchar(50)
)

create table Person(
id serial,
person_name varchar(50),
city_id int
)

select*from City;

insert into City(title)
values  ('Berlin'),
		('Tokio'),
		('Antalya'),
		('Paris'),
		('Roma')

insert into Person(person_name, city_id)
values ('Victor',1),
('Elena',2),
('Anna', 3),
('Vadim', 3),
('Ivan', 7),
('Irina', 9)

select*from Person inner join city 
on person.city_id = City.id;

select person_name, title, city_id, city.id from 
Person inner join city 
on person.city_id = City.id;

select p.person_name, c.title, c.id from
person as p inner join city as c 
on p.city_id = c.id;

select person.person_name, person.city_id, city.title, city.id from
person left join city
on person.city_id = City.id;

select person.person_name, person.city_id, city.title, city.id from
person right join city
on person.city_id = City.id;

select person.person_name, person.city_id, city.title, city.id from
person full outer join city
on person.city_id = City.id;

select person.person_name, person.city_id, city.title, city.id from
person , city; --cross join (,)






