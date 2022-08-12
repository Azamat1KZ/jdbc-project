select  * from employees;

/*
 shortcut Win = Ctrl + Enter
            mac = Cmd + Enter
 */

-- Single line comment for SQL files
-- SQL is case insensitive


-- display all columns from department table
select * from DEPARTMENTS;

-- display only first name from employees table

select FIRST_NAME from EMPLOYEES;

-- display only city names from locations table

select CITY from LOCATIONS;

-- display firstname, lastname, salary from employees table

select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES;

-- display country name, region id from countries table
select COUNTRY_NAME, REGION_ID from COUNTRIES;

-- display job id, job title from jobs table

select JOB_ID, JOB_TITLE from JOBS;

select STREET_ADDRESS, POSTAL_CODE from LOCATIONS;