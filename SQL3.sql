create database ch_09_rom;
use ch_09_rom;

create table wildlife_info(wildlife_id int,sanctuary_name varchar(30),state_name varchar(20),established_year int,nearest_city varchar(30),category varchar(20),animal_name varchar(30), 
avg_lifespan_years int, avg_weight_kg decimal,avg_height_m decimal);

desc wildlife_info;

Insert into wildlife_info value(1, 'Bandipur National Park', 'Karnataka', 1974, 'Mysuru', 'Mammal', 'Bengal Tiger', 15, 220.00, 1.10);
Insert into wildlife_info value(2, 'Bandipur National Park', 'Karnataka', 1974, 'Mysuru', 'Mammal', 'Indian Elephant', 60, 5000.00, 3.00);
Insert into wildlife_info value(3, 'Bandipur National Park', 'Karnataka', 1974, 'Mysuru', 'Bird', 'Indian Peacock', 20, 4.00, 1.00);
Insert into wildlife_info value(4, 'Nagarhole National Park', 'Karnataka', 1988, 'Kodagu', 'Mammal', 'Tiger', 15, 220.00, 1.10);
Insert into wildlife_info value(5, 'Nagarhole National Park', 'Karnataka', 1988, 'Kodagu', 'Mammal', 'Indian Elephant', 60, 5000.00, 3.00);
Insert into wildlife_info value(6, 'Nagarhole National Park', 'Karnataka', 1988, 'Kodagu', 'Bird', 'Indian Peacock', 20, 4.00, 1.00);
Insert into wildlife_info value(7, 'Bhadra Wildlife Sanctuary', 'Karnataka', 1951, 'Chikkamagaluru', 'Mammal', 'Tiger', 15, 220.00, 1.10);
Insert into wildlife_info value(8, 'Bhadra Wildlife Sanctuary', 'Karnataka', 1951, 'Chikkamagaluru', 'Mammal', 'Indian Elephant', 60, 5000.00, 3.00);
Insert into wildlife_info value(9, 'Bhadra Wildlife Sanctuary', 'Karnataka', 1951, 'Chikkamagaluru', 'Reptile', 'King Cobra', 20, 6.00, 0.50);
Insert into wildlife_info value(10, 'Kudremukh National Park', 'Karnataka', 1987, 'Chikkamagaluru', 'Mammal', 'Tiger', 15, 220.00, 1.10);
Insert into wildlife_info value(11, 'Kudremukh National Park', 'Karnataka', 1987, 'Chikkamagaluru', 'Bird', 'Indian Peacock', 20, 4.00, 1.00);
Insert into wildlife_info value(12, 'Kudremukh National Park', 'Karnataka', 1987, 'Chikkamagaluru', 'Mammal', 'Sambar Deer', 12, 200.00, 1.20);
Insert into wildlife_info value(13, 'Dandeli Wildlife Sanctuary', 'Karnataka', 1956, 'Dandeli', 'Mammal', 'Tiger', 15, 220.00, 1.10);
Insert into wildlife_info value(14, 'Dandeli Wildlife Sanctuary', 'Karnataka', 1956, 'Dandeli', 'Mammal', 'Indian Elephant', 60, 5000.00, 3.00);
Insert into wildlife_info value(15, 'Dandeli Wildlife Sanctuary', 'Karnataka', 1956, 'Dandeli', 'Reptile', 'King Cobra', 20, 6.00, 0.50);
Insert into wildlife_info value(16, 'Bannerghatta National Park', 'Karnataka', 1971, 'Bengaluru', 'Mammal', 'Tiger', 15, 220.00, 1.10);
Insert into wildlife_info value(17, 'Bannerghatta National Park', 'Karnataka', 1971, 'Bengaluru', 'Mammal', 'Indian Elephant', 60, 5000.00, 3.00);
Insert into wildlife_info value(18, 'Bannerghatta National Park', 'Karnataka', 1971, 'Bengaluru', 'Bird', 'Indian Peacock', 20, 4.00, 1.00);
Insert into wildlife_info value(19, 'Bannerghatta National Park', 'Karnataka', 1971, 'Bengaluru', 'Reptile', 'King Cobra', 20, 6, 0.50);
Insert into wildlife_info value(20,'Biligiri Rangaswamy Sanctuary', 'Karnataka', 1974, 'Chamarajanagar', 'Mammal', 'Tiger', 15, 220,00, 1,10);

select * from wildlife_info;

select * from  wildlife_info where wildlife_id=1;

select * from wildlife_info where wildlife_id=1 and established_year=1974;
 
select * from wildlife_info where wildlife_id=1 or established_year=1975;
 
select  state_name, established_year, animal_name from wildlife_info where wildlife_id=10;
 
 
select state_name, animal_name from wildlife_info where wildlife_id in(1);
 
select state_name, animal_name from wildlife_info where wildlife_id in(1);
  
select * from wildlife_info where wildlife_id between 1 and 10;
  
select * from wildlife_info where wildlife_id not between 1 and 10;