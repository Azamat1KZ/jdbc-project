-- 1. display full addresses from locations table in a single column
select *
from locations;
select STREET_ADDRESS || '-' || POSTAL_CODE || '-' || CITY || '-' || COUNTRY_ID as Full_Address
from LOCATIONS;

--concat
select concat(STREET_ADDRESS, concat(POSTAL_CODE, concat(CITY, COUNTRY_ID))) as Full_Adress
from LOCATIONS;

-- 2. display all informations of the employee who has the minimum salary  in employees table

--find min salary
select min(SALARY)
from EMPLOYEES;

--information about that employee
select *
from EMPLOYEES
where SALARY = 2100;

--make it dynamic
select *
from EMPLOYEES
where SALARY = (select min(SALARY) from EMPLOYEES);

-- 3. display the second minimum salary from the employees

--min salary --> 2100

--second in salary
select min(SALARY)
from EMPLOYEES
where SALARY > 2100;
--get me second min dynamicly
select *
from EMPLOYEES
where SALARY = (select min(SALARY)
                from EMPLOYEES

                where salary > (select min(salary) from employees));

-- 4. display all informations of the employee who has the second minimum  salary
--second min salary is 2200

--get nme info abt that guy
select min(SALARY)
from EMPLOYEES
where SALARY > (select min(SALARY) from EMPLOYEES);

-- 5. list all the employees who are making above the average salary;
--find avg
select avg(SALARY)
from EMPLOYEES;

--find info abt these employees
select *
from EMPLOYEES
where SALARY > 6462;

--make it dynamic
select *
from EMPLOYEES
where SALARY > (select round(avg(SALARY)) from EMPLOYEES);

--how many emoloyees do we have getting more than avg
select JOB_ID, count(*)
from EMPLOYEES
where SALARY > (select round(avg(SALARY)) from EMPLOYEES)
group by JOB_ID;


-- 6. list all the employees who are making less than the average salary
select *
from EMPLOYEES
where SALARY < (select round(avg(SALARY)) from EMPLOYEES);

-- 7. display manager name of 'Neena'
--manager_id for Neena
select MANAGER_ID
from EMPLOYEES
where FIRST_NAME='Neena';

-- manager name of Neena
select FIRST_NAME from EMPLOYEES
    where EMPLOYEE_ID=100;

--make it dynamic
select FIRST_NAME from EMPLOYEES
where EMPLOYEE_ID=(select MANAGER_ID
from EMPLOYEES
where FIRST_NAME='Ismael');

-- 8. find the 3rd maximum salary from the employees table (do not include duplicates)
--first order salaries in desc
select distinct SALARY from EMPLOYEES
order by SALARY desc;

--make it dynamic
select min(SALARY) from (select distinct SALARY from EMPLOYEES
               order by SALARY desc)
where ROWNUM<4;

-- 12. find the 3rd minimum salary from the employees table (do not  include duplicates)
select distinct SALARY from EMPLOYEES
order by SALARY asc ;

select max(SALARY) from (select distinct SALARY from EMPLOYEES
                         order by SALARY asc)
where ROWNUM<4;

--give info abt that guys
select * from EMPLOYEES
where SALARY=(select max(SALARY) from (select distinct SALARY from EMPLOYEES
                                       order by SALARY asc)
              where ROWNUM<4);

--Tasks

-- Display How many country we have in each region_ID
select REGION_ID, count(*) from COUNTRIES
group by REGION_ID;

-- Display How many country we have in each region_name
select  REGION_NAME, count(*) from COUNTRIES c inner join REGIONS r
                                    on c.REGION_ID = r.REGION_ID
group by REGION_NAME;

-- Display How many country we have in Europe
--with where
select  REGION_NAME, count(*) from COUNTRIES c inner join REGIONS r
                                    on c.REGION_ID = r.REGION_ID
where REGION_NAME='Europe'
group by REGION_NAME;

--with having
select  REGION_NAME, count(*) from COUNTRIES c inner join REGIONS r
                                                          on c.REGION_ID = r.REGION_ID
group by REGION_NAME
having REGION_NAME='Europe';


-- Display region names where they have more than 5 country
select  REGION_NAME, count(*) from COUNTRIES c inner join REGIONS r
                                                          on c.REGION_ID = r.REGION_ID
group by REGION_NAME
having count(*)>5
order by 2;