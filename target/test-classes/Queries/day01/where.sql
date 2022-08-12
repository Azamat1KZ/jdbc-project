/*
 we will use where keyword to filter request results
 */

 -- display first name, last name, salary from employees where first name is David and last name is Lee

select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES
where FIRST_NAME='David' and LAST_NAME='Lee';

-- get me all information from employees who is making more than 6000


select * from EMPLOYEES
where SALARY>6000;


-- get me all information from employees who is making less or equal to 6000
select * from EMPLOYEES
where SALARY<=6000;

-- get me email information from employees who is making less or equal to 6000
select EMAIL from EMPLOYEES
where SALARY<=6000;

--DO we have relation with email and salary? -No

-- get me firstname, salary from employees who is making more than 6000 and department is = 80

select FIRST_NAME, SALARY from EMPLOYEES
where SALARY>6000 and DEPARTMENT_ID=80;

-- get me firstname, salary from employees who is making more than or equal to 3000 and less than or equal than 6000
select FIRST_NAME,SALARY from EMPLOYEES
where SALARY>=3000 and SALARY<=6000;

--Between lower AND upper = boundaries are included
--it will give all matching results within range
select FIRST_NAME,SALARY from EMPLOYEES
where SALARY between 3000 and 6000;

--get me all information from employees who is working as IT_PROG and SA_REP

select * from EMPLOYEES
where JOB_ID='IT_PROG' or JOB_ID='SA_REP';

--IN CLAUSES
--It uses OR logic
--get me all information from employees who is working as IT_PROG and SA_REP
select  * from EMPLOYEES
where JOB_ID IN('IT_PROG', 'SA_REP', 'FI_MGR');


--get me all information from employees who is not working as IT_PROG and SA_REP
select * from EMPLOYEES
where JOB_ID NOT IN('IT_PROG', 'SA_REP', 'FI_MGR');

-- get me all info from locations table where city is Roma, Tokyo
select * from LOCATIONS
where CITY IN('Roma', 'Tokyo');


-- get me all info from employees where ids are equal to 113, 145, 124 ,122
select * from EMPLOYEES
where EMPLOYEE_ID IN(113, 145, 124, 122);


--NULL and NOT NULL
select  * from EMPLOYEES
where DEPARTMENT_ID is null;
