create database mall;
use mall;
create table shopping_mall(id int primary key, mall_name varchar(20) unique, location varchar(20) not null, no_of_shops int, 
no_of_floors int,constraint chk_floors check(no_of_floors>1 and no_of_floors<10)); 

desc shopping_mall;

insert into shopping_mall values(1, 'Orion Mall','RajajiNagar',100,5);
insert into shopping_mall values(2,'Phoenix','Whitefield',180,6);
insert into shopping_mall values(3,' UB City Mall','Mallya Road',100,7);
insert into shopping_mall values(4,'Mantri Mall','Malleshwaram',120,6);
insert into shopping_mall values(5,'Forum Mall','Koramangala',110,6);
insert into shopping_mall values(6,'Garuda Mall','Magrath Road',222,5);
insert into shopping_mall values(7,'Inorbit mall','whitefield',123,7);
insert into shopping_mall values(8,'Nexus Mall','Whitefield',240,6);
insert into shopping_mall values(9,'Esteem Mall','Hebbal',231,8);
insert into shopping_mall values(10,'Meenakshi Mall','Banneraghatta',123,9);

select * from shopping_mall;

alter table shopping_mall add column owner_name varchar(20) not null;

alter table shopping_mall drop column owner_name;
