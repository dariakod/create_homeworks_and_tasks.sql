-- 1. Создать базу данных homeworks


-- В этой базе создать таблицу employees с полями:
-- • id – integer - уникальное значение, не пустое, с автозаполнением 
-- • firstname - varchar(128) - не пустое
-- • lastname - varchar(128) - не пустое
-- • job - varchar(64)
-- • age - integer - от 20 до 100(вкл.)
-- • hascar – char только один символ, по умолчанию 'N' 
-- • username - varchar(128) - уникальное значение, не пустое

-- Добавить 5 строк.

-- Удалить таблицу employees 

-- Удалить бд homeworks

-- Создать бд tasks и в этой базе создать таблицу Staff используя скрипт.
-- https://github.com/annykh/genTech/blob/main/staff.txt

-- Из таблицы вывести работников, которым больше 20 и меньше 40.

-- Вывести только имена сотрудников, у которых юзернейм начинается на букву А и им больше 20.

-- Вывести имена, фамилии и возраст тех сотрудников, у которых id либо 3, либо 7, либо 10.

-- Вывести сотрудников у которых имя начинается на букву 'A',  а фамилия заканчивается на букву 'S'.


create database homework;
use homework;

create table employees(
   firstname varchar(128) not null,
   lastname varchar (128) not null,
   job varchar(60),
   age int check(age between 20 and 100),
   hascar char(1) default 'N' check (hascar IN ('Y', 'N')), -- Один символ с дефолтом 'N'
   username varchar(128) unique not null
);

select * from employees;

insert into employees (firstname, lastname, job, age, hascar, username) 
values ('Анастасия', 'Смирнова', 'System Administrator', 23, 'N' 'anstass'),
	   ('Вероника', 'Михайлова', 'Graphic Designer', 31, 'Y' 'mihhver'),
	   ('Ольга', 'Алексеева', 'Dentist', 45, 'N' 'olaleksevv'),
	   ('Надежда', 'Волкова', 'Actor', 63, 'Y' 'naddjda'),
	   ('Татьяна', 'Лебедева', 'Nurse', 28, 'N' 'lebedtatii');

drop table employees;
drop database homework;

create database tasks;
use tasks;

create table Staff(
    id int primary key auto_increment,
    firstname varchar(64) not null,
    lastname varchar(64) not null,
    position varchar(128),
    age int,
    has_child char(1),
    username varchar(128) unique
  );

insert into Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Anna'
        , 'Daniels'
        , 'Senior Teacher'
        , 22
        , 'N'
        , 'annakhach5'
        );
        
insert into Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Tom'
        , 'Austin'
        , 'Junior Blogger'
        , 25
        , 'Y'
        , 'tom12345'
        );
insert into Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Bill'
        , 'Lorentz'
        , 'Junior Web Developer'
        , 40
        , 'Y'
        , 'billt1'
        );        
insert into Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Lily'
        , 'May'
        , 'Junior Backend Developer'
        , 25
        , 'Y'
        , 'lil12'
        );
insert into Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Nona'
        , 'Lucky'
        , 'Junior Teacher'
        , 20
        , 'N'
        , 'LuckyNona'
        ); 
insert into Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ( 'Nancy'
        , 'Greenberg'
        , 'Middle UI Designer'
        , 32
        , 'Y'
        , 'nancy1'
        );        
insert into Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Daniel'
        , 'Faviet'
        , 'Senior UX Designer'
        , 43
        , 'Y'
        , 'favietD'
        );        
insert into Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Ally'
        , 'Austin'
        , 'Junior UI Designer'
        , 28
        , 'N'
        , 'ally1'
        );        
insert into Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Lily'
        , 'Chen'
        , 'Senior Teacher'
        , 25
        , 'Y'
        , 'lilychen'
        );        
insert into Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Anna'
        , 'Austin'
        , 'Middle Teacher'
        , 34
        , 'Y'
        , 'anna28'
        );        
insert into Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Alexander'
        , 'Lorentz'
        , 'Junior Backend Developer'
        , 25
        , 'N'
        , 'alex12345'
        );        
insert into Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Ashley'
        , 'Lorentz'
        , 'Junior UX Designer'
        , 18
        , 'N'
        , 'lorentz99'
        );        
insert into Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Tom'
        , 'Lucky'
        , 'Middle Blogger'
        , 34
        , 'Y'
        , 'lucky78'
        );        
insert into Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Ashley'
        , 'Weiss'
        , 'Junior Blogger'
        , 18
        , 'N'
        , 'weiss11'
        );
insert into Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Tom'
        , 'Weiss'
        , 'Junior UI Designer'
        , 18
        , 'N'
        , 'tom222'
        );   
insert into Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Anna'
        , 'Bloom'
        , 'Middle UX Designer'
        , 20
        , 'N'
        , 'bloom5'
        );   
insert into Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Tom'
        , 'Berg'
        , 'Middle Teacher'
        , 34
        , 'N'
        , 'tommy1'
        );   
insert into Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Ashley'
        , 'Berg'
        , 'Senior Teacher'
        , 37
        , 'N'
        , 'ash89'
        );
insert into Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Lily'
        , 'Weiss'
        , 'Middle Blogger'
        , 45
        , 'N'
        , 'lilyW1'
        );   
insert into Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Anna'
        , 'Lorentz'
        , 'Senior UX Designer'
        , 31
        , 'N'
        , 'annlo1'
        );   
insert into Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Ashley'
        , 'Weiss'
        , 'Middle UX Designer'
        , 18
        , 'N'
        , 'weiss1'
        );       
insert into Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Anna'
        , 'Keren'
        , 'Junior UX Designer'
        , 34
        , 'N'
        , 'annaK1'
        );       
	
select * from Staff;

-- Из таблицы вывести работников, которым больше 20 и меньше 40.
select * from Staff
where age > 20 and age < 40;

-- Вывести только имена сотрудников, у которых юзернейм начинается на букву А и им больше 20.
select * from Staff
where username like 'A%' and age > 20;
-- like 'A%' — ищет значения, начинающиеся на букву "A".

-- Вывести имена, фамилии и возраст тех сотрудников, у которых id либо 3, либо 7, либо 10.
select firstname, lastname, age from Staff
where id in (3, 7, 10);

-- Вывести сотрудников у которых имя начинается на букву 'A',  а фамилия заканчивается на букву 'S'.
select * from Staff
where firstname like 'A%' and lastname like '%S';


