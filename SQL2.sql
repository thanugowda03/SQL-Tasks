create database district_details;
use district_details;
create table district(id int, district_name varchar(20),state_id int, district_code varchar(10), population bigint, official_language varchar(20),
 no_of_taluks int,area_sq_km bigint,tourist_spot varchar(20), literacy_rate int);
 desc district;
 
 select * from district;
 insert into district values(1,'Bangalore',101,'BAN',1000000,'Kannada',5,2000,'Lalbhag',60);
 insert into district values(2,'Mysore',102,'MYS',2500000,'Kannada,Hindi',7,2500,'Mysore Palace',65);
 insert into district values(3,'Mangalore',103,'MNG',1500000,'Kannada',3,2010,'Malpe Beach',80);
 insert into district values(4,'Tumkur',104,'TMK',100000,'Kannada',4,1500,'Ranganthittu',60);
 insert into district values(5,'Mandya',105,'MND',120000,'Kannada',6,2600,'KudureMukh',50);
 insert into district values(6,'Udupi',106,'UDP',120600,'Kannada',5,2300,'KrishnaMta',86);
 insert into district values(7,'Hassan',107,'HSN',178889,'Kannada',8,6814,'Shravanabelagola',76);
 insert into district values(8,'Shivamogga',108,'SMG',1799579,'Kannada',7,8465,'Jog Falls',78);
 insert into district values(9,'Chitradurga',109,'CTD',1660378,'Kannada',6,8432,'Chitradurga port',73);
 insert into district values(10,'Ballari',110,'BLY',2532382,'Kannada',6,8677,'Hampi',67);
 insert into district values(11,'Raichur',111,'RCR',256667,'Kannada',4,6767,'Raichuru port',60);
 insert into district values(12,'Bidar',112,'BDR',1233455,'Kannada',5,8978,'Bidar Fort',67);
 insert into district values(13,'Kalaburgi',113,'KLB',454756,'Kannnada',6,8989,'Gulbarga Fort', 65);
 insert into district values(14,'Belgavi',114,'BLG',23445,'Kannada',7,5646,'Belgum Fort',75);
 insert into district values(15,'Davanagere',115,'DVG',57633,'Kannada',4,6454,'Kunduvada Lake',77);
 insert into district values(16,'Kolar',116,'KLR',12345666,'Kannada',5,4565,'Antharagange',76);
 insert into district values(17,'Dharwad',117,'DWD',123453,'Kannada',5,5652,'unkal lake',77);
 insert into district values(18,'Vijayapura',118,'BJP',213354,'Kannada',5,6576,'Gol Gumbaz',68);
 insert into district values(19,'Kodagu',119,'KDG',554762,'Kannada',3,4102,'AbbeyFalls',82);
 insert into district values(20,'Chikkamagaluru',120,'CMR',12454546,'Kannada',4,7201,'Mullayyanagiri',76);

 select * from district where id=1;
 select * from district where id=2;
 select * from district where district_name='Kodagu';
 select * from district where district_name='Mangalore';
 select * from district where no_of_taluks=3 ;
 select * from district where official_language='Kannada';

 
 
 
 select * from district where id=1 and district_name='Bangalore';
 select * from district where id=3 and district_code='MNG';
 select * from district where state_id=5 and district_name='Mandya';
select * from district where id=2 and district_code='MYS';
select *  from district where no_of_taluks=5 and literacy_rate=77 and official_language='Kannada';

 select * from district where id=3 or district_code='MNG';
 select * from district where id=3 or district_code='UDP';
 select * from district where district_code='MNG' or no_of_taluks=9;
 select * from district where district_code='MNG' or no_of_taluks=9 or area_sq_km=2010;
 select * from district where state_id='105' or no_of_taluks=9;

  
select district_name, state_id from district where id =1;
select district_name, state_id, district_code from district where id =5;
select district_name, district_code from district where no_of_taluks=8;
select district_name, state_id, district_code,official_language  from district where id =1;
select district_name, state_id, district_code,official_language,no_of_taluks from district where id =1;


select district_name, state_id from district where id in(1);
select district_name, state_id , official_language from district where id in(4);
select district_name, state_id from district where no_of_taluks in(3);
select state_id, district_code,no_of_taluks from district where district_name in('Hassan');
select district_name, state_id from district where id in(5);

  
select district_name, state_id from district where id not in(1);
select district_name, state_id , official_language from district where id not in(4,5,6,7);
select district_name, state_id from district where no_of_taluks not in(3,5,6);
select state_id, district_code,no_of_taluks from district where district_name not in('Hassan');
select district_name, state_id from district where id not in(5,8,7,9);

  
select * from district where id between 1 and 10;
select * from district where state_id between 101 and 109;
select * from district where id between 10 and 20;
select * from district where id between 1 and 7;
select * from district where id between 1 and 15;

select * from district where id not between 1 and 10;
select * from district where state_id not between 101 and 109;
select * from district where id not between 10 and 20;
select * from district where id not between 1 and 7;
select * from district where id not between 1 and 15;
 
 