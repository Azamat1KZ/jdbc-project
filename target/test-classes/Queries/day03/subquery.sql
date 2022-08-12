select * from employees;
/*
 Subquery
  -Query inside Query
  -Inner queries will run first
 */

 --Display all info from employees who is making highest salary in company?
select max(SALARY) from EMPLOYEES; --24K

select * from EMPLOYEES
where SALARY=24000; -- Hardcoded. What if salary will change

--make it dynamic
select * from EMPLOYEES
where SALARY=(select max(SALARY) from EMPLOYEES);


--Display all info who is making second highest salary

--find max salary
select max(SALARY) from EMPLOYEES;
--find second max salary
select max(SALARY) from EMPLOYEES
where SALARY<24000
--make it dynamic
select max(SALARY) from EMPLOYEES
where SALARY<(select max(SALARY) from EMPLOYEES);
--find info about second highest salary

