select * from employees
where ROWNUM<=10;


select * from EMPLOYEES
where ROWNUM < 6
order by SALARY desc ;

--correct
select * from (select * from EMPLOYEES order by SALARY desc )
where ROWNUM < 6;

--display all info from employees who is getting 5th highest salary
select min(SALARY) from  (select distinct SALARY from EMPLOYEES order by SALARY desc )
where ROWNUM<6;

--Display all info from employees who is getting 15th highest salary
select min(SALARY) from  (select distinct SALARY from EMPLOYEES order by SALARY desc )
where ROWNUM<16;

--Display all info from employees who is getting 213th highest salary
select min(SALARY) from  (select distinct SALARY from EMPLOYEES order by SALARY desc )
where ROWNUM<214;  --this is just a sample from IQs

--Display all info who is making 5th salary
select * from EMPLOYEES
where SALARY=(select min(SALARY) from  (select distinct SALARY from EMPLOYEES order by SALARY desc )
              where ROWNUM<6);

--dynamic way




