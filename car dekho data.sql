create schema cars;
use cars;
-- Read DATA--
select * from car_dekho;
-- total count--
select count(*) from car_dekho;
-- how many cars will be available in 2023?--
select count(*) from car_dekho
where year =2023;
-- cars available in 2021,2022,2020--
-- gropuby--
select count(*) from car_dekho
where year in (2020,2021,2022) group by year;
-- total of all cars by years--
select year, count(*) from car_dekho group by year;
-- how many disel cars will be there in 2020?--
select count(*) from car_dekho where year =2020 and fuel = 'Diesel';
select * from car_dekho;
-- how many car petrol cars will be there in 2020?--
select count(*) from car_dekho where year =2020 and fuel ='Petrol';
-- give the print of all fuel cars--
select year ,count(*) from car_dekho where fuel ='Petrol' group by year;
select year ,count(*) from car_dekho where fuel ='Diesel' group by year;
select year ,count(*) from car_dekho where fuel ='Cng' group by year;
-- there were more than 100 cars in given year, which year?--
select year, count(*) from car_dekho group by year having count(*)>100;
-- all cars count details between 2015 and 2023 ?--
select count(*) from car_dekho where year between 2015 and 2023;
-- all cars details between 2015 to 2023?--
select*from car_dekho where year between 2015 and 2023;