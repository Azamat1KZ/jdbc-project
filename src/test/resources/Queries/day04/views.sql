select * from EMPLOYEES;

create view EmployeesInfo15 as
select  substr(FIRST_NAME,1,1)||'.'||substr(LAST_NAME,1,1)||'.' as initials,
        FIRST_NAME||' makes ' || SALARY as Employees_salary from EMPLOYEES;

--S.K. Steven makes 24000
select * from EmployeesInfo15;

select  initials from EMPLOYEESINFO15;
select Employees_salary from EMPLOYEESINFO15;
drop view EMPLOYEESINFO15;
