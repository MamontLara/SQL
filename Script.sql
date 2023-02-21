--Таблица employees
--
--Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null
--Наполнить таблицу employee 70 строками.
create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

insert into employees(employee_name)
values ('Borshosh Viktoria'), ('Samsonova Anna'), ('Koval Olena'), ('Kostuk Igor'), ('Golod Anna'),
	   ('Krasnik Oleg'), ('Bloha Sofia'), ('Bilan Svitlana'), ('Fedusenko Inna'), ('Lytvin Oleksandr'),
	   ('Korol Liza'), ('Vovk Bogdan'), ('Vorovik Olga'), ('Morgun Svatoslav'), ('Stadnik Vlad'),
	   ('Dorogan Maksim'), ('Shkurka Milana'), ('Sokolova Alina'), ('Sergienko Olga'), ('Lysak Andriy'),
	   ('Storog Artur'), ('Lytvin Anna'), ('Derienko Ivan'), ('Fesenko Ivan'), ('Stolyar Vladislava'),
	   ('Kvitkova Alina'), ('Korotya Vladislav'), ('Hubar Vita'), ('Moroz Viktor'), ('Oksenchenko Nazar'),
	   ('Omelchenko Platon'), ('Bondarenko Viktor'), ('Amosova Angelina'), ('Krotov Illya'), ('Pirogova Iryna'),
	   ('Ponomarenko Roman'), ('Vlasuk Vitaliy'), ('Gonchar Oleksandr'), ('Rostovkina Inna'), ('Kremova Natalia'),
	   ('Nikitin Vladislav'), ('Romanov Stanislav'), ('Holosha Maksim'), ('Tsvetkov Oleg'), ('Lastochkin Volodymyr'),
	   ('Panchenko Sergey'), ('Volovic Vitaliy'), ('Yaremenko Evgen'), ('Letyk Roman'), ('Yakovetch Natalia'),
	   ('Zozulia Artur'), ('Zolotoverh Andriy'), ('Buchaka Inna'), ('Drobotya Oleksiy'), ('Lysova Larysa'),
	   ('Martynov Pavlo'), ('Leonova Viktoria'), ('Dulych Dmytro'), ('Koshman Ivan'), ('Nikiforov Anton'),
	   ('Kratov Ivan'), ('Pologiy Vadim'), ('Titov Maksim'), ('Ohvat Inna'), ('Amosova Ylia'),
	   ('Soroka Anton'), ('Vinogradova Natalia'), ('Pushka Nina'), ('Orlan Ludmila'), ('Krot Sergey');   
   

--Таблица salary
--Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null
--Наполнить таблицу salary 15 строками:
--- 1000
--- 1100
--- 1200
--- 1300
--- 1400
--- 1500
--- 1600
--- 1700
--- 1800
--- 1900
--- 2000
--- 2100
--- 2200
--- 2300
--- 2400

create table salary(
	id serial primary key,
	monthly_salary int not null
);

insert into salary(monthly_salary)
values (1000), (1100), (1200), (1300), (1400),
 	   (1500), (1600),	(1700), (1800), (1900),
 	   (2000), (2100), (2200), (2300), (2400);
 	  
--Таблица employee_salary
--Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
--Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id

create table employee_salary(
	id Serial primary key,
	employee_id int unique not null,
	salary_id int not null
);

insert into employee_salary(id, employee_id, salary_id)
values (1, 3, 7), (2, 1, 4), (3, 5, 9), (4, 40, 13), (5, 23, 4),
 	   (6, 11, 2), (7, 52, 10),	(8, 15, 13), (9, 26, 4), (10, 16, 1),
 	   (11, 33, 7), (12, 12, 4), (13, 13, 5), (14, 14, 3), (15, 71,  9),
 	   (16, 72, 8), (17, 73, 7), (18, 74, 6), (19, 75, 5), (20, 76, 7),
 	   (21, 77, 4), (22, 78, 3), (23, 79, 2), (24, 80, 1), (25, 34, 11),
 	   (26, 35, 12), (27, 36, 13), (28, 37, 14), (29, 38, 15), (30, 29, 14),
 	   (31, 41, 13), (32, 42, 11), (33, 43, 9), (34, 44, 8), (35, 45, 10),
 	   (36, 46, 4), (37, 47, 5), (38, 48, 6), (39, 49, 3), (40, 24, 5);


/*--Таблица roles
--Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique
--Поменять тип столба role_name с int на varchar(30)
Наполнить таблицу roles 20 строками*/

create table roles(
	id serial primary key,
	role_name int unique not null
);

ALTER TABLE roles ALTER COLUMN role_name TYPE varchar(30);

insert into roles(role_name)
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
    ('SEO'),
    ('Sales manager'),
    ('Junior Automation QA engineer'),
    ('Middle Automation QA engineer'),
    ('Senior Automation QA engineer');

/*   Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
Наполнить таблицу roles_employee 40 строками:*/

create table roles_employee(
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);

insert into roles_employee(employee_id, role_id)
 values (7, 2), (20, 4), (3, 9), (5, 13), (23, 4),
        (11, 2), (10 ,9), (22, 13), (21, 3), (34, 4),
        (6, 7), (63, 1), (24, 2), (25, 3), (26, 4),
        (27, 5), (28, 6), (29, 6), (30, 7), (31, 8),
        (32, 9), (35, 10), (36, 11), (37, 12), (38, 13),
        (39, 14), (40, 15), (41, 16), (42, 17), (43, 18),
        (44, 19), (45, 10), (50, 20), (51, 9), (52, 8),
        (53, 7), (54, 6), (55, 5), (60, 4), (61, 3);
       
--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select e.employee_name, s.monthly_salary
from employees e 
join employee_salary es on e.id = es.employee_id
join salary s on s.id = es.salary_id;

--2. Вывести всех работников у которых ЗП меньше 2000.
select e.employee_name 
from employees e 
join employee_salary es on e.id = es.employee_id
join salary s on s.id = es.salary_id
where s.monthly_salary < 2000;

--3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select es.employee_id, es.salary_id
from employee_salary es
where es.employee_id not in (select id from employees);

--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select es.employee_id, es.salary_id, s.monthly_salary
from employee_salary es
join salary s on s.id = es.salary_id
where es.employee_id not in (select id from employees) and s.monthly_salary < 2000; 

--5. Найти всех работников кому не начислена ЗП.
select employee_name 
from employees  
where id not in (select employee_id from employee_salary);

-- 6. Вывести всех работников с названиями их должности.
select e.employee_name, r.role_name
from employees e 
join roles_employee re on e.id = re.employee_id
join roles r on r.id = re.role_id;

--7. Вывести имена и должность только Java разработчиков.
select e.employee_name, r.role_name
from employees e 
join roles_employee re on e.id = re.employee_id
join roles r on r.id = re.role_id
where r.role_name like '% Java developer';

--8. Вывести имена и должность только Python разработчиков.
select e.employee_name, r.role_name
from employees e 
join roles_employee re on e.id = re.employee_id
join roles r on r.id = re.role_id
where r.role_name like '% Python developer';

--9. Вывести имена и должность всех QA инженеров.
select e.employee_name, r.role_name
from employees e 
join roles_employee re on e.id = re.employee_id
join roles r on r.id = re.role_id
where r.role_name like '%QA engineer';

--10. Вывести имена и должность ручных QA инженеров.
select e.employee_name, r.role_name
from employees e 
join roles_employee re on e.id = re.employee_id
join roles r on r.id = re.role_id
where r.role_name like '% Manual QA engineer';

--11. Вывести имена и должность автоматизаторов QA
select e.employee_name, r.role_name
from employees e 
join roles_employee re on e.id = re.employee_id
join roles r on r.id = re.role_id
where r.role_name like '%Automation QA engineer';

--select e.id, e.employee_name, s.monthly_salary, r.role_name
--from employees e 
--left join employee_salary es on e.id = es.employee_id
--left join salary s on s.id = es.salary_id
--left join roles_employee re on e.id = re.employee_id
--left join roles r on r.id = re.role_id
--where r.role_name like '%Junior%';
--
--insert into employee_salary(id, employee_id, salary_id)  
--values (41, 20, 2), (42, 6, 3), (43, 63, 3), (44, 30, 4), (45, 53, 1), (46, 60, 2);

--12. Вывести имена и зарплаты Junior специалистов
select e.employee_name, s.monthly_salary
from employees e 
join employee_salary es on e.id = es.employee_id
join salary s on s.id = es.salary_id
join roles_employee re on e.id = re.employee_id
join roles r on r.id = re.role_id
where r.role_name like '%Junior%';


--select e.id, e.employee_name, s.monthly_salary, r.role_name
--from employees e 
--left join employee_salary es on e.id = es.employee_id
--left join salary s on s.id = es.salary_id
--left join roles_employee re on e.id = re.employee_id
--left join roles r on r.id = re.role_id
--where r.role_name like '%Middle%';
--
--insert into employee_salary(id, employee_id, salary_id)  
--values (47, 7, 5), (48, 27, 7), (49, 31, 6), (50, 55, 7);

--13. Вывести имена и зарплаты Middle специалистов
select employee_name, s.monthly_salary
from employees e 
left join employee_salary es on e.id = es.employee_id
left join salary s on s.id = es.salary_id
left join roles_employee re on e.id = re.employee_id
left join roles r on r.id = re.role_id
where r.role_name like '%Middle%';


--select e.id, e.employee_name, s.monthly_salary, r.role_name
--from employees e 
--left join employee_salary es on e.id = es.employee_id
--left join salary s on s.id = es.salary_id
--left join roles_employee re on e.id = re.employee_id
--left join roles r on r.id = re.role_id
--where r.role_name like '%Senior%';
--
--insert into employee_salary(id, employee_id, salary_id)  
--values (51, 10, 11) (52, 21, 13), (53, 28, 12), (54, 32, 14), (55, 50, 12), (56, 51, 11), (57, 54, 12), (58, 61, 13), (59, 25, 11);

--14. Вывести имена и зарплаты Senior специалистов
select e.employee_name, s.monthly_salary
from employees e 
left join employee_salary es on e.id = es.employee_id
left join salary s on s.id = es.salary_id
left join roles_employee re on e.id = re.employee_id
left join roles r on r.id = re.role_id
where r.role_name like '%Senior%';

--15. Вывести зарплаты Java разработчиков
select r.role_name, s.monthly_salary
from roles r 
join roles_employee re on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id
join salary s on s.id = es.salary_id
where r.role_name like '%Java developer';

--16. Вывести зарплаты Python разработчиков
select r.role_name, s.monthly_salary
from roles r 
join roles_employee re on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id
join salary s on s.id = es.salary_id
where r.role_name like '%Python developer';

--17. Вывести имена и зарплаты Junior Python разработчиков
select e. employee_name, s.monthly_salary
from roles r 
join roles_employee re on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id
join salary s on s.id = es.salary_id
join employees e on e.id = es.employee_id
where r.role_name like 'Junior Python developer';

--18. Вывести имена и зарплаты Middle JS разработчиков
select e. employee_name, s.monthly_salary
from roles r 
join roles_employee re on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id
join salary s on s.id = es.salary_id
join employees e on e.id = es.employee_id
where r.role_name like 'Middle JavaScript developer';

--19. Вывести имена и зарплаты Senior Java разработчиков
select e. employee_name, s.monthly_salary
from roles r 
join roles_employee re on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id
join salary s on s.id = es.salary_id
join employees e on e.id = es.employee_id
where r.role_name like 'Senior Java developer';

--20. Вывести зарплаты Junior QA инженеров
select r.role_name, s.monthly_salary
from roles r 
join roles_employee re on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id
join salary s on s.id = es.salary_id
where r.role_name like 'Junior % QA engineer';

--21. Вывести среднюю зарплату всех Junior специалистов
select AVG(s.monthly_salary) as AVG_Junior_salary
from employees e 
join employee_salary es on e.id = es.employee_id
join salary s on s.id = es.salary_id
join roles_employee re on e.id = re.employee_id
join roles r on r.id = re.role_id
where r.role_name like '%Junior%';

--22. Вывести сумму зарплат JS разработчиков
select SUM(s.monthly_salary) as SUM_JS_salary
from roles r 
join roles_employee re on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id
join salary s on s.id = es.salary_id
where r.role_name like '%JavaScript developer';

--23. Вывести минимальную ЗП QA инженеров
select MIN(s.monthly_salary) as Min_QA_salary
from roles r 
join roles_employee re on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id
join salary s on s.id = es.salary_id
where r.role_name like '% QA engineer';

--24. Вывести максимальную ЗП QA инженеров
select MAX(s.monthly_salary) as MAX_QA_salary
from roles r 
join roles_employee re on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id
join salary s on s.id = es.salary_id
where r.role_name like '%QA engineer';

--25. Вывести количество QA инженеров
select count(e.id) as Count_QA_
from employees e 
join roles_employee re on e.id = re.employee_id
join roles r on r.id = re.role_id
where r.role_name like '%QA engineer';

--26. Вывести количество Middle специалистов.
select count(e.id) as Count_Middle_
from employees e 
join roles_employee re on e.id = re.employee_id
join roles r on r.id = re.role_id
where r.role_name like '%Middle%';

--27. Вывести количество разработчиков
select count(e.id) as Count_developer_
from employees e 
join roles_employee re on e.id = re.employee_id
join roles r on r.id = re.role_id
where r.role_name like '%developer%';

--28. Вывести фонд (сумму) зарплаты разработчиков.
select SUM(s.monthly_salary) as SUM_Dev_salary
from roles r 
join roles_employee re on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id
join salary s on s.id = es.salary_id
where r.role_name like '%developer%';

--29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select e.employee_name, r.role_name, s.monthly_salary  
from employees e 
join employee_salary es on e.id = es.employee_id
join salary s on s.id = es.salary_id
join roles_employee re on e.id = re.employee_id
join roles r on r.id = re.role_id
order by s.monthly_salary;

--select *  
--from employees e 
--left join employee_salary es on e.id = es.employee_id
--left join salary s on s.id = es.salary_id
--left join roles_employee re on e.id = re.employee_id
--left join roles r on r.id = re.role_id
--order by s.monthly_salary;

--30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select e.employee_name, r.role_name, s.monthly_salary  
from employees e 
join employee_salary es on e.id = es.employee_id
join salary s on s.id = es.salary_id
join roles_employee re on e.id = re.employee_id
join roles r on r.id = re.role_id
where s.monthly_salary between 1700 and 2300
order by s.monthly_salary;

--31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select e.employee_name, r.role_name, s.monthly_salary  
from employees e 
join employee_salary es on e.id = es.employee_id
join salary s on s.id = es.salary_id
join roles_employee re on e.id = re.employee_id
join roles r on r.id = re.role_id
where s.monthly_salary < 2300
order by s.monthly_salary;

--32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select e.employee_name, r.role_name, s.monthly_salary  
from employees e 
join employee_salary es on e.id = es.employee_id
join salary s on s.id = es.salary_id
join roles_employee re on e.id = re.employee_id
join roles r on r.id = re.role_id
where s.monthly_salary in (1100, 1500, 2000)
order by s.monthly_salary;

