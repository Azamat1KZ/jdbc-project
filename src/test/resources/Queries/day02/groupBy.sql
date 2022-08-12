select * from employees;

--display average salary for 'IT_PROG'
select avg(SALARY) from EMPLOYEES
where JOB_ID='IT_PROG';

--display average salary for 'SA_REP'
select avg(SALARY), min(SALARY), max(SALARY) from EMPLOYEES
where JOB_ID='SA_REP';

--display average salary for 'MK_MAN'
select avg(SALARY), min(SALARY), max(SALARY) from EMPLOYEES
where JOB_ID='MK_MAN';


select JOB_ID, avg(SALARY) from EMPLOYEES
group by JOB_ID;

select JOB_ID, avg(SALARY), min(SALARY), sum(SALARY), count(*) from EMPLOYEES
group by JOB_ID;


-- HINT --> If there is EACH keyword it means we need to use GROUP BY
-- get me sum(salary) EACH department in Employees table
select DEPARTMENT_ID, sum(SALARY), count (*), min(SALARY) from EMPLOYEES
where DEPARTMENT_ID is not null
group by DEPARTMENT_ID
order by DEPARTMENT_ID

--get me how many departments we  have in each location
select LOCATION_ID, count (*) from DEPARTMENTS
group by LOCATION_ID;

--get me how many locations we have in each country
select COUNTRY_ID, count(*) from LOCATIONS
group by COUNTRY_ID
order by count(*) asc; --to sort them based on number of locations
                    -- asc is default but still we can use


--get me how many countries we have in each region
select REGION_ID, count (*) from COUNTRIES
group by REGION_ID
order by REGION_ID; --order them by region_id

--get me how many employees working for each manager
select MANAGER_ID, count (*) from EMPLOYEES
group by MANAGER_ID
order by MANAGER_ID;

--ignore null values
select MANAGER_ID, count (*) from EMPLOYEES
where MANAGER_ID is not null
group by MANAGER_ID
having count(*) >5;






