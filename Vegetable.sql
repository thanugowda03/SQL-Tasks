create database sqltask;
use sqltask;
create table vegetable1(id int, name varchar(20),category varchar(20),price_per_kg int, rating int, seller varchar(20),
stock_status varchar(20), origin varchar(20),shelf_life int,color varchar(10));
desc vegetable1;

alter table vegetable1 add column discount int;
alter table vegetable add column nutirent_content varchar(20);

alter table vegetable1 drop column discount;
alter table vegetable1 drop column nutirent_content;

alter table vegetable1 rename column id to veg_id;
alter table vegetable1 rename column rating to ratings;
alter table vegetable1 rename column price_per_kg to price;
alter table vegetable1 rename column seller to veg_seller;
alter table vegetable1 rename column color to veg_color;


insert into vegetable1 values(1, 'tomato','fruit vegetable',40,4,'freshmart','in stock','karnataka',5,'red');
insert into vegetable1 values(2, 'potato','root',30,4,'freshmart','in stock','up',15,'brown');
insert into vegetable1 values(3, 'onion','bulb',35,4,'VeggieKart','in stock','maharashtra',10,'purple');
insert into vegetable1 values(4, 'carrot','root',60,4,'freshmart','in stock','ooty',7,'orange');
insert into vegetable1 values(5, 'cabbage','leafy',55,4,'freshmart','in stock','haryana',5,'white');
insert into vegetable1 values(6, 'brinjal','fruit vegetable',50,4,'local bazar','in stock','himachala',8,'purple');
insert into vegetable1 values(7, 'lady finger','fruit vegetable',45,4,'local bazar','in stock','tamilnadu',6,'green');
insert into vegetable1 values(8, 'beetroot','root',60,4,'natures basket','in stock','maharashtra',7,'dark red');
insert into vegetable1 values(9, 'capsicum','fruit vegetable',70,4,'freshmart','in stock','himachal',7,'green');
insert into vegetable1 values(10, 'radish','root',35,4,'freshmart','in stock','up',7,'white');
insert into vegetable1 values(11, 'tomato','fruit vegetable',40,4,'freshmart','in stock','karnataka',5,'red');
insert into vegetable1 values(12, 'potato','root',30,4,'freshmart','in stock','up',15,'brown');
insert into vegetable1 values(13, 'onion','bulb',35,4,'VeggieKart','in stock','maharashtra',10,'purple');
insert into vegetable1 values(14, 'carrot','root',60,4,'freshmart','in stock','ooty',7,'orange');
insert into vegetable1 values(15, 'cabbage','leafy',55,4,'freshmart','in stock','haryana',5,'white');
insert into vegetable1 values(16, 'brinjal','fruit vegetable',50,4,'local bazar','in stock','himachala',8,'purple');
insert into vegetable1 values(17, 'lady finger','fruit vegetable',45,4,'local bazar','in stock','tamilnadu',6,'green');
insert into vegetable1 values(18, 'beetroot','root',60,4,'natures basket','in stock','maharashtra',7,'dark red');
insert into vegetable1 values(19, 'capsicum','fruit vegetable',70,4,'freshmart','in stock','himachal',7,'green');
insert into vegetable1 values(20, 'radish','root',35,4,'freshmart','in stock','up',7,'white');

/*delete from vegetable1;*/
select * from vegetable1;

update vegetable1 set veg_color='red' where veg_id=18 and name='betroot';
update vegetable1 set veg_color='green' where veg_id=6 and name='brinjal';
update vegetable1 set price=35 where veg_id=2 and name='potato';
update vegetable1 set veg_seller='veggieKart' where stock_status='in stock' and veg_color='white';
update vegetable1 set shelf_life=8 where veg_id=18 and name='betroot';

update vegetable1 set ratings=5 where veg_id=1 or name='tomato';
update vegetable1 set veg_color='green' where veg_id=2 or name='potato';
update vegetable1 set price=35 where veg_id=4 or name='carrot';
update vegetable1 set veg_seller='veggieKart' where stock_status='in stock' or veg_color='white';
update vegetable1 set shelf_life=8 where veg_id=18 or name='betroot';


update vegetable1 set ratings=3 where veg_id in(3,4,5,6,7);
update vegetable1 set price=50 where veg_id in(3,4,5,6,7);
update vegetable1 set shelf_life=7 where name in('potatao','onion','carrot');
update vegetable1 set veg_color='green' where stock_status in('in stock');
update vegetable1 set origin='karnataka' where name in('tomato','potato');

update vegetable1 set ratings=5 where veg_id not in(13,14,15,16,17,18,19);
update vegetable1 set price=20 where veg_id not in(3,4);
update vegetable1 set shelf_life=10 where name not in('potatao','onion','carrot');
update vegetable1 set veg_color='orange' where not stock_status not in('in stock');
update vegetable1 set origin='karnataka' where name not in('tomato','brinjal');

select * from vegetable1;

delete from vegetable1 where veg_id=1;
delete from vegetable1 where category='root' and veg_id=2;
delete from vegetable1 where veg_id=3 or name='onion';

select count(*) as price from vegetable1;
select sum(price) as total_price from vegetable1;
select max(ratings) as max_ratings from vegetable1;
select min(ratings) as min_ratings from vegetable1;
select avg(veg_id) as total_id from vegetable1;



/*delete from vegetable1 where veg_seller='veggieKart' in(5,6,7); 

delete from vegetable1 where veg_id=3 not in(8,9); */
















