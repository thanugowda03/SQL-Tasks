create database amazon_products;
use amazon_products;

create table amazon_product(id int,product_name varchar(20), category varchar(20),brand varchar(10), price int, discount_in_percentage int,seller varchar(20),warranty_in_yrs int,color varchar(20),material varchar(20));
desc amazon_product;

alter table amazon_product add column model_year int;
alter table amazon_product add column delivery_time varchar(20);

alter table amazon_product drop column model_year;
alter table amazon_product drop column delivery_time;

alter table amazon_product rename column id to product_id;
alter table amazon_product rename column category to product_category;
alter table amazon_product rename column discount_in_percentage to discount;
alter table amazon_product rename column warranty_in_yrs to warranty;
alter table amazon_product rename column color to product_color;

insert into amazon_product values(1,'iPhone 15 Pro','Smartphones','Apple',129900,5,'Apple Store',1,'Black','Titanium');
insert into amazon_product values(2,'Samsung GalaxyS24','SmartPhones','Samsung',99999,10,'Samsung Online',1,'Silver','Metal');
insert into amazon_product values(3, 'OnePlus 12R','SmartPhones','OnePlus',39999,8,'Cloudtail',1,'Blue','Glass');
insert into amazon_product values(4,'Dell XPS 13','Laptop','Dell',129000,15,'Dell Official',2,'Silver','Aluminium');
insert into amazon_product values(5,'Canon EOS 90D','Camera','Canon',119999,8,'Canonon Store',2,'Black','Metal');
insert into amazon_product values(6,'Adidas Ultraboost','Shoes','Adidas',11999,20,'Adidas Official',1,'Black','Knit');
insert into amazon_product values(7,'Apple Watch','SmartWatch','Apple',29900,5,'Apple Store',1,'White','Aluminium');
insert into amazon_product values(8,'Echo Dot 5th Gen','Smart Speaker','Amazon',4499,15,'Cloud Dial',1,'Blue','Plastic');
insert into amazon_product values(9,'Sony WH-1000XMS','Headphones','Sony',29990,12,'Appario retail',1,'Black','Plastic');
insert into amazon_product values(10,'LG TV','Television','LG',139999,18,'LG Official',2,'Black','Metal');
insert into amazon_product values(11,'iPhone 15 Pro','Smartphones','Apple',129900,5,'Apple Store',1,'Black','Titanium');
insert into amazon_product values(12,'Samsung GalaxyS24','SmartPhones','Samsung',99999,10,'Samsung Online',1,'Silver','Metal');
insert into amazon_product values(13, 'OnePlus 12R','SmartPhones','OnePlus',39999,8,'Cloudtail',1,'Blue','Glass');
insert into amazon_product values(14,'Dell XPS 13','Laptop','Dell',129000,15,'Dell Official',2,'Silver','Aluminium');
insert into amazon_product values(15,'Canon EOS 90D','Camera','Canon',119999,8,'Canonon Store',2,'Black','Metal');
insert into amazon_product values(16,'Adidas Ultraboost','Shoes','Adidas',11999,20,'Adidas Official',1,'Black','Knit');
insert into amazon_product values(17,'Apple Watch','SmartWatch','Apple',29900,5,'Apple Store',1,'White','Aluminium');
insert into amazon_product values(18,'Echo Dot 5th Gen','Smart Speaker','Amazon',4499,15,'Cloud Dial',1,'Blue','Plastic');
insert into amazon_product values(19,'Sony WH-1000XMS','Headphones','Sony',29990,12,'Appario retail',1,'Black','Plastic');
insert into amazon_product values(20,'LG TV','Television','LG',139999,18,'LG Official',2,'Black','Metal');

select * from amazon_product;

update amazon_product set discount=7 where product_id=1 and warranty=1;
update amazon_product set price=100000 where product_id=2 and product_color='Silver';
update amazon_product set discount=10 where product_name='LG TV' and warranty=1;
update amazon_product set seller='Dell' where product_id=4 and warranty=2;
update amazon_product set product_color='white' where seller='Apple Store' and warranty=1;

update amazon_product set discount=7 where product_id=1 or warranty=1;
update amazon_product set price=100000 where product_id=2 or product_color='Silver';
update amazon_product set discount=10 where product_name='LG TV' or warranty=2;
update amazon_product set seller='Dell' where product_id=4 or warranty=2;
update amazon_product set product_color='white' where seller='Apple Store' and product_id=1;

update amazon_product set brand='Apple' where product_id in(1,2,3);
update amazon_product set warranty=2 where product_category in('Smartphones');
update amazon_product set discount=10 where product_id in(8,9,10,11);
update amazon_product set product_id=7 where product_category in('Shoes');
update amazon_product set price=30000 where discount in(5,10);

update amazon_product set brand='Apple' where product_id not in(1,2,3);
update amazon_product set warranty=2 where product_category not in('Smartphones');
update amazon_product set discount=10 where product_id not in(8,9,10,11);
update amazon_product set product_id=1 where product_category not in('Shoes');
update amazon_product set price=30000 where discount not in(5,10);

delete from amazon_product where product_category='Smartphones';

select * from amazon_product;

select count(*) as no_of_records from amazon_product;
SELECT sum(discount) as total_discount from amazon_product;
SELECT min(warranty) as min_warranty from amazon_product;
SELECT max(warranty) as max_warranty from amazon_product;
select avg(price) as avg_price from amazon_product;


















