--Get all info from employees who is making low salary to high
select * from employees
order by SALARY asc;

--Get all info from employees who is making high to low
select * from employees
order by SALARY desc;

--How can we use index to sort data?
    --Index needs to be in range of visible columns
select EMAIL from employees
order by 1;

select EMAIL, FIRST_NAME from employees
order by 2;

-- get me all info where employee_id<120 and order them in alphabetical order

select * from EMPLOYEES
where EMPLOYEE_ID<120 order by FIRST_NAME;

--IQ --> get me all info from employees based on first_name asc and last_name desc

select * from EMPLOYEES
order by FIRST_NAME, LAST_NAME desc ;