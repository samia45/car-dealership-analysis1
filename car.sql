create schema cars;
use cars;
-- READ DATA --
select*from car_dekho;

-- TOTAL CARS: TO GET A COUNT OF TOTAL RECORS --
select count(*) from car_dekho;

-- THE MANAGER ASKED THE EMPLOYEE HOW MANY CARS WILL BE AVAILABLE IN 2023 --
select count(*) from car_dekho where year = 2023;

-- THE MANAGER ASKED THE EMNPLOYEE HOW MANY CARSE IS ABAILABLE IN 2020,2021,2022 --
select count(*) from car_dekho where year = 2020;
select count(*) from car_dekho where year = 2021;
select count(*) from car_dekho where year = 2022;

-- GROUP BY --
select count(*) from car_dekho where year in (2020,2021,2023) group by year;

-- Client asked me to print the total of the cars by year. I don't see all the details. --
select year, count(*) from car_dekho group by year;

-- Client asked to car dealer agent how many diesel cars will there be in 2020. --
select count(*) from car_dekho where year = 2020 and fuel = "Diesel";

-- Client requested a car dealer agent how many petrol cars will there be in 2020. --
select count(*) from car_dekho where year = 2020 and fuel = "Petrol";

-- The manager told the employee to give a print all the fuel cars, (petrol, diesel and CNG) come by all years. --
select year, count(*) from car_dekho where fuel = "Petrol" group by year;
select year, count(*) from car_dekho where fuel = "Diesel" group by year;
select year, count(*) from car_dekho where fuel = "CNG" group by year;

-- Manager said there were more than hundred cars in a given year Which year had more than hundred cars? --
select year, count(*) from car_dekho group by year having count(*)>100;
select year, count(*) from car_dekho group by year having count(*)<50;

-- The manager said to the employee all cars count details between 2015 and 2023. We need a complete list.--
select count(*) from car_dekho where year between 2015 and 2023;

-- The manager said to the employee all cars details between 2015 and 2023. We need a complete list.--
select * from car_dekho where year between 2015 and 2023;





