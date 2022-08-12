select * from  locations;
/*
 MultiRow / Aggregate / Grouping func
 count
 max
 min
 avg
 sum
 it will take multiple row and gives single output

 ALL aggregate functions ignore null
 */

--how many departments do we have?
select count(*) from  DEPARTMENTS;


-- how many different names do we have

select count (distinct FIRST_NAME) from EMPLOYEES;


--how many employees we have works as 'IT_PROG' or 'SA_REP'

select count(*) from EMPLOYEES
where JOB_ID in ('IT_PROG', 'SA_REP');

--NOTE: if you want to count your result use * to get correct answer
--How many employees we have as department_id is null
select count(*) from EMPLOYEES
where DEPARTMENT_ID is null ;

select count(DEPARTMENT_ID) from EMPLOYEES
where DEPARTMENT_ID is not null ;


--MAX
--get me max salary from employees
select max(SALARY) from EMPLOYEES;

--MIN
--get me mix salary from employees
select min(SALARY) from EMPLOYEES;

--SUM
-- get me total salary of employees
select sum(SALARY) from EMPLOYEES;

--AVG
-- get me average salary of employees
select avg(SALARY) from EMPLOYEES;

--ROUND --> it is not an aggregate function. It is numeric one
select round(avg(SALARY)) from EMPLOYEES;

select round(avg(SALARY), 1) from EMPLOYEES; -- gives 1 decimal


