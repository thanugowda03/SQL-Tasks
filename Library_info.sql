create database library;
use library;
create table library_info(id int primary key, book_name varchar(20) unique, author_name varchar(20) not null, published_year int,price int,constraint chk_price check(price>100 and price<500));
desc library_info;

insert into library_info values(1,'Moodana Madilu','Kuvempu',1930,400);
insert into library_info values(2,'Swatantrya Samara','Aluru Venkatesh Rao',1928,200);
insert into library_info values(3,'Govina Haadu','Devanooru Mahadeva',1970,150);
insert into library_info values(4,'Kavya Sangraha','D R Bendre',1926,250);
insert into library_info values(5,'Samskara','U R Ananthamurthy',1965,340);
insert into library_info values(6,'GhataShraddha','U R Ananthamurthy',1977,300);
insert into library_info values(7,'Bhoomi Thayi','Kuvempu',1938,270);
insert into library_info values(8,'MalegalaliMadumagal','Kuvempu',1967,400);
insert into library_info values(9,'Bhoomi Geetha','S L Bhairappa',1999,300);
insert into library_info values(10,'Chomana Dudi','K Shivarama Karntha',1933,367);

select * from library_info;
/*delete from library_info;*/

alter table library_info add column  language varchar(20) not null ; 

alter table library_info drop column language;


